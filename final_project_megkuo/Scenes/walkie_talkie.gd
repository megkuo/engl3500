extends RigidBody2D
var follow = false
signal walkie_is_follow
signal walkie_is_not_follow


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("pick_up"):
		_pick_up()
	if follow:
		walkie_is_follow.emit()
		var root_node = get_parent()
		#print("AHHH")
		var child_two = root_node.get_node("sara")
		#var child_two_child = child_two.get_node("Child_Two_Child")
		var child_two_position = child_two.global_position
		global_position = child_two_position + Vector2(10, 0)
	else:
		walkie_is_not_follow.emit()
	pass

func _pick_up():
	# how to prevent reversing crouching if there is not enough room? maybe need to detect if becomes in contact wiith ceiling
	#print("ceiling:", is_on_ceiling())s
	#print("floor:", is_on_floor())
	if character_nearby() and not follow: # and is_on_floor():
		follow = true
		collision_layer = 1
		collision_mask = 1
	
	elif character_nearby() and follow: # and is_on_floor():
		follow = false
		collision_layer = 1
		collision_mask = 1
		
	# hmm unsure -- TODO
func _distance_calc(x1, y1, x2, y2):
	# eww math
	return sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2))
	
func character_nearby():
	var root_node = get_parent()
	#print("AHHH")
	var child_two = root_node.get_node("sara")
	#var child_two_child = child_two.get_node("Child_Two_Child")
	var child_two_position = child_two.global_position
	
	#print(global_position.x, " ", global_position.y)
	#print(child_two_position.x, " ", child_two_position.y)
	
	var distance = _distance_calc(global_position.x, global_position.y, child_two_position.x, child_two_position.y)
	#print(distance)
	
	if distance < 120:
		return true
		
	else:
		return false
