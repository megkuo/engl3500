extends Node2D
# reference: https://www.youtube.com/watch?v=RMdf60IAxY0

var charlie_part = false
#var sara_pass = false

func _physics_process(delta):
	# check if the part has made it to charlie
	if charlie_part:
		#get_tree().change_scene_to_file("res://Scenes/level2.tscn")
		SceneSwitcher.switch_scene("res://Scenes/level4.tscn")
	pass

func _on_next_level_area_2d_2_body_entered(body) -> void:
	#get_tree().change_scene_to_file("res://Scenes/level2.tscn")
	# bless this answerer's soul: https://stackoverflow.com/questions/77389673/godot-body-entered-only-for-a-specific-object-in-the-scene
	print(body.name)
	#if body.name == "sara":
		#sara_pass = true
	if body.name == "charlie_part":
		charlie_part = true 
	#SceneSwitcher.switch_scene("res://Scenes/level2.tscn")
	pass # Replace with function body.
