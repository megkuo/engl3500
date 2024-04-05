extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _disable_collision():
	$CollisionShape2D.set_deferred("disabled", true)

func _enable_collision():
	$CollisionShape2D.set_deferred("disabled", false)





func _on_area_2d_body_entered(body:Node2D):
	_disable_collision()
	pass # Replace with function body.


func _on_area_2d_body_exited(body:Node2D):
	_enable_collision()
	pass # Replace with function body.


func _on_open_door_button_button_down():
	_disable_collision()
	# need to change so that the collision area moves 'with" the door tile map, then hits a max
	pass # Replace with function body.


func _on_open_door_button_button_up():
	_enable_collision()
	pass # Replace with function body.
