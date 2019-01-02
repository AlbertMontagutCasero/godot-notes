extends Node


func _ready():
	var library = preload("res://static_functions/StaticFunctions.gd")
	library.library_function()
