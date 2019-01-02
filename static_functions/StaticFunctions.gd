extends Node

# The attributes only can be used if class is instanced
var attribute_1 = 1

static func library_function():
	print ("printing something :)")


# this will generate a compiler error because you can't access to a
# attribute using static methods. Case the class are not instanced.
#static func get_attribute_1():
#	return attribute_1