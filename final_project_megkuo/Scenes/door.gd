extends Node

#var open : bool 
#var offset = 20
#var height_limit : int
#var move_limit = 140
#var movement_amount = 140

# Called when the node enters the scene tree for the first time.
#func _ready():
	#if open:
		#_move_door()
	#pass # Replace with function body.

func _show():
	self.visible = true

func _hide():
	self.visible = false

func _move_door():
	pass

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#if open:
		#_move_door_up()
	#else:
		#_move_door_down()
	pass

func _disable_collision():
	$CollisionShape2D.set_deferred("disabled", true)

func _enable_collision():
	$CollisionShape2D.set_deferred("disabled", false)


#func _move_door_up():
	#
	##if self.global_position.y > 
	#if movement_amount > -1 * move_limit:
		#self.global_position += Vector2(0, -offset)
		#movement_amount -= offset
	#pass
#
#func _move_door_down():
	#if movement_amount < move_limit:
		#self.global_position += Vector2(0, offset)
		#movement_amount += offset
	#pass
	
# commenting out the two methods below so the button can't be "clicked" on to activate

#func _on_open_door_button_button_down():
	##_hide()
	#open = true
	#pass # Replace with function body.
#
#
#func _on_open_door_button_button_up():
	##_show()
	#open = false
	#pass # Replace with function body.

#
#func _on_open_door_area_2d_body_entered(body):
	#open = true
	#pass # Replace with function body.
#
#
#func _on_open_door_area_2d_body_exited(body):
	#open = false
	#pass # Replace with function body.
