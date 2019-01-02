extends TextureButton

onready var group_button_1_2 = $GroupButton1_2
onready var group_button_2_1 = $GroupButton2_1


func _on_GroupButton_pressed():
	print(_get_group(self))
	# What button is pressed?


func _get_group(node):
	return node.group
