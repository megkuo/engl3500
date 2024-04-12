extends RigidBody2D
var follow = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("pick_up"):
		_pick_up()
	if follow:
		var root_node = get_parent()
		#print("AHHH")
		var child_two = root_node.get_node("sara2")
		#var child_two_child = child_two.get_node("Child_Two_Child")
		var child_two_position = child_two.global_position
		global_position = child_two_position + Vector2(10, 0)
	pass


func _pick_up():
	# how to prevent reversing crouching if there is not enough room? maybe need to detect if becomes in contact wiith ceiling
	#print("ceiling:", is_on_ceiling())s
	#print("floor:", is_on_floor())
	if character_nearby() and not follow: # and is_on_floor():
		follow = true
		collision_layer = 0
		collision_mask = 0
	
	elif character_nearby() and follow: # and is_on_floor():
		follow = false
		collision_layer = 1
		collision_mask = 1
		
	# hmm unsure -- TODO

func character_nearby():
	var root_node = get_parent()
	#print("AHHH")
	var child_two = root_node.get_node("sara2")
	#var child_two_child = child_two.get_node("Child_Two_Child")
	var child_two_position = child_two.global_position
	
	if global_position - child_two_position < Vector2(50, 50) or global_position - child_two_position > Vector2(-50, -50):
		return true
		
	else:
		return false
