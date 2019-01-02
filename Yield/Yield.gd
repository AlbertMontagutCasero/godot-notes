extends Node2D

signal go

func _ready():
	_test()# llamamos a la funcion _test

func _test():
	yield(self, "go") # paramos la ejecucion de la funcion, hasta que se lance la señal
	print("GOOOO")
	_test()

func _on_TextureButton_pressed():
	emit_signal("go")