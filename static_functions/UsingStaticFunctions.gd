extends Node


func _ready():
	var library = preload("res://static_functions/StaticFunctions.gd")
	library.library_function()

	var library_2 = load("res://static_functions/StaticFunctions.gd")
	library_2.library_function()

	# It prints the method but i get an error ;...;
	var normal_class = preload("res://static_functions/NormalClass.gd")
	normal_class.some_method()

	# Also gets the error
	var normal_class_2 = load("res://static_functions/NormalClass.gd")
	normal_class.some_method()

	# now it works without errors.
	var normal_class_instanced = normal_class.new() # instanciate a object form class
	normal_class_instanced.some_method()

	# Will generate runtime Error since normal_class isn't instanciated
	# normal_class.get_attribute_1()

	# Now you are doing the right thing
	print(normal_class_instanced.get_attribute_1())

	# @see : get_attribute_1 from StaticFunctions.gd

	# Will generate another error sice you can't call attributes without
	# Intantiate a object form class
	# library.attribute_1