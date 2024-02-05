extends Node2D # works on anything that is a Node2D
@export var rotation_speed : float
# ^ this allows you to see a variable in the editor + can set it there

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform = transform.rotated_local(rotation_speed)
	#pass
