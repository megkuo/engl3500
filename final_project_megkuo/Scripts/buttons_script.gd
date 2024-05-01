extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var root_node = get_parent()
	#print("AHHH")
	var child_two = root_node.get_node("sara")
	#var child_two_child = child_two.get_node("Child_Two_Child")
	var child_two_position = child_two.global_position
	global_position = child_two_position + Vector2(0, 200)
	
	pass


func _on_walkie_talkie_walkie_is_follow():
	# only shows when walkie talkie is picked up
	# reference: https://docs.godotengine.org/en/stable/getting_started/step_by_step/signals.html
	visible = true
	pass # Replace with function body.


func _on_walkie_talkie_walkie_is_not_follow():
	visible = false
	pass # Replace with function body.
