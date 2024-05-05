extends Node2D
# reference: https://www.youtube.com/watch?v=RMdf60IAxY0

#var charlie_pass = false
var sara_pass = false

func _physics_process(delta):
	# check if both players have made it to the switch
	if sara_pass:
		#get_tree().change_scene_to_file("res://Scenes/level2.tscn")
		SceneSwitcher.switch_scene("res://Scenes/level3.tscn")
	pass


func _on_speech_bubble_text_next_level():
	sara_pass = true
	pass # Replace with function body.
