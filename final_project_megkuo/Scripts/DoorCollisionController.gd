extends Node
var open : bool 
var offset = 20
var height_limit : int
var move_limit = 140
var movement_amount = 140

# getting weird effect where when both characters are on the buttons, when one exits the door still closes
# not sure how to fix unless I track the number of exits and enters
var button_pressers = 0
# we're gonna take into account the s
#var button1open = 0
#var button2open = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	_compute_open()
	if open:
		_move_door_up()
	else:
		_move_door_down()
	pass

func _disable_collision():
	$CollisionShape2D.set_deferred("disabled", true)

func _enable_collision():
	$CollisionShape2D.set_deferred("disabled", false)


func _move_door_up():
	
	#if self.global_position.y > 
	if movement_amount > -1 * move_limit:
		self.global_position += Vector2(0, -offset)
		movement_amount -= offset
	pass

func _move_door_down():
	if movement_amount < move_limit:
		self.global_position += Vector2(0, offset)
		movement_amount += offset
	pass


# commenting out the two methods below so the button can't be "clicked" on to activate

#func _on_open_door_button_button_down():
	#_disable_collision()
	#open = true
	## need to change so that the collision area moves 'with" the door tile map, then hits a max
	#pass # Replace with function body.
#
#
#func _on_open_door_button_button_up():
	#_enable_collision()
	#open = false
	#pass # Replace with function body.
	

func _compute_open():
	# may want this to return a value instead of directly changing global variable
	if button_pressers > 0:
		_disable_collision()
		open = true
	else:
		_enable_collision()
		open = false
		


func _on_open_door_area_2d_body_entered(body):
	button_pressers += 1
	#_disable_collision()
	#open = true
	#print("so true")
	pass # Replace with function body.


func _on_open_door_area_2d_body_exited(body):
	button_pressers -= 1
	#_enable_collision()
	#open = false
	pass # Replace with function body.
#
#
func _on_open_door_area_2d_2_body_entered(body):
	button_pressers += 1
	#_disable_collision()
	#open = true
	pass # Replace with function body.


func _on_open_door_area_2d_2_body_exited(body):
	button_pressers -= 1
	#_enable_collision()
	#open = false
	pass # Replace with function body.
	
	
