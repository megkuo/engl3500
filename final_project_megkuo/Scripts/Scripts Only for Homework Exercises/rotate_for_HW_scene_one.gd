extends Node2D
@export var rotation_speed : int 
var is_rotating = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _rotate_me():
	transform = transform.rotated_local(rotation_speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_rotating:
		_rotate_me()
	pass




func _on_button_button_down():
	is_rotating = true
	pass # Replace with function body.
