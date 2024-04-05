extends Node
var open : bool 
var offset = 20
var height_limit : int
var move_limit = 220
var movement_amount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if open:
		_move_door_up()
	else:
		_move_door_down()
	pass # Replace with function body.

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



func _on_area_2d_body_entered(body:Node2D):
	_disable_collision()
	open = true
	pass # Replace with function body.


func _on_area_2d_body_exited(body:Node2D):
	_enable_collision()
	open = false
	pass # Replace with function body.


func _on_open_door_button_button_down():
	_disable_collision()
	open = true
	# need to change so that the collision area moves 'with" the door tile map, then hits a max
	pass # Replace with function body.


func _on_open_door_button_button_up():
	_enable_collision()
	open = false
	pass # Replace with function body.
