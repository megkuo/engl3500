extends Node2D
# source: https://godotforums.org/d/21002-how-do-i-access-the-position-of-another-node-through-code/3
var root_node 
var child_two 
#var child_two_child = child_two.get_node("Child_Two_Child")

var child_two_position 

var visibility_timer = 0


func _ready():
	var root_node = get_parent()
	var child_two = root_node.get_node("sara")
	#var child_two_child = child_two.get_node("Child_Two_Child")
	
	var child_two_position = child_two.global_position
	#print ("The Child_Two node is at position: " + str(child_two_position))
	#print ("My position is: " + str(global_position))
	
	
func _physics_process(delta):
	#print(visibility_timer)
	var root_node = get_parent()
	#print("AHHH")
	var child_two = root_node.get_node("sara")
	#var child_two_child = child_two.get_node("Child_Two_Child")
	var child_two_position = child_two.global_position
	
	
	if visibility_timer > 0: # counts down how long the bubble appears for
		visibility_timer -= 1
		#print(visibility_timer)
		self.visible = true
	
	if visibility_timer == 0:
		self.visible = false
	
	global_position = child_two_position + Vector2(15, 0)

func _on_left_button_button_down():
	visibility_timer = 100
	pass # Replace with function body.

func _on_right_button_button_down():
	visibility_timer = 100
	pass # Replace with function body.


func _on_jump_button_button_down():
	visibility_timer = 100
	pass # Replace with function body.


func _on_stay_button_button_down():
	visibility_timer = 100
	pass # Replace with function body.


func _on_crouch_button_button_down():
	visibility_timer = 100
	pass # Replace with function body.
