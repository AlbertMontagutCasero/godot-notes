extends Node


func _on_Sprite_pressed():
	# All nodes have this method
	print(self.get_process_delta_time())
	print(self.get_physics_process_delta_time())
