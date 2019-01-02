extends Node2D

signal go

func _ready():
	# llamamos a la funcion _test
	_test()

func _test():
	# paramos la ejecucion de la funcion, hasta que se lance la señal
	yield(self, "go")
	print("GOOOO")
	_test()

func _on_TextureButton_pressed():
	emit_signal("go")