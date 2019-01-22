extends Node2D

"""
As you've seen before, Godot keeps all resources stored
as files in the project folder. From code, these are accessible
under the res:// folder path. For example, res://project.godot
will always point to the current project's configuration file,
no matter where on your computer the project is actually stored.

However, the res:// filesystem is set as read-only for safety
when the project is run. It is also read-only when the project
is exported. Any data that needs to be retained by the user is placed
in the user:// file path. Where this folder physically exists will
vary depending on what platform the game is running on.

You can find the current platform's user-writable data folder
using OS.get_user_data_dir()
"""

var number_to_persist = 0
var number_to_persist_file = "user://number_to_persist.txt"


func _ready():
	print(OS.get_user_data_dir())
	setup()
	print("number to persist " + str(number_to_persist) + " - Persist.gd")
	number_to_persist += 10
	save_number_to_persist()


func setup():
	var f = File.new()
	if f.file_exists(number_to_persist_file):
		f.open(number_to_persist_file, File.READ)
		var content = f.get_as_text()
		number_to_persist = int(content)
		f.close()


func save_number_to_persist():
	var f = File.new()
	f.open(number_to_persist_file, File.WRITE)
	f.store_string(str(number_to_persist))
	f.close()
