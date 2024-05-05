extends RichTextLabel

var direction_dict = {"left" : "Charlie?", 
					"right" : "What's wrong?",
					"jump" : "Charlie, try jumping.",
					"crouch" : "Can you crouch down?",
					"stay" : "Please stay there for a second, Charlie."}

var current_direction = "left"

var counter = 0

signal next_level

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = direction_dict[current_direction]
	if current_direction == "right":
		# set timer before next level is started
		counter += 1
		if counter > 300:
			next_level.emit()
	pass





func _on_left_button_button_down():
	current_direction = "left"
	pass # Replace with function body.


func _on_right_button_button_down():
	current_direction = "right"
	pass # Replace with function body.


func _on_jump_button_button_down():
	current_direction = "jump"
	pass # Replace with function body.


func _on_stay_button_button_down():
	current_direction = "stay"
	pass # Replace with function body.

func _on_crouch_button_button_down():
	current_direction = "crouch"
	pass # Replace with function body.
	



#func _on_left_button_button_down():
	#pass # Replace with function body.
#
#
#func _on_right_button_button_down():
	#pass # Replace with function body.
#
#
#func _on_jump_button_button_down():
	#pass # Replace with function body.
#
#
#func _on_stay_button_button_down():
	#pass # Replace with function body.
#
#
#func _on_crouch_button_button_down():
	#pass # Replace with function body.


func _on_charlie_stopped():
	current_direction = "right"
	pass # Replace with function body.
