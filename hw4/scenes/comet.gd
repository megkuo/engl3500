extends Node2D # works on anything that is a Node2D
@export var x_speed : float
@export var y_speed : float
#var screensize
# ^ this allows you to see a variable in the editor + can set it there
# reference: https://docs.godotengine.org/en/3.0/getting_started/step_by_step/your_first_game.html


# Called when the node enters the scene tree for the first time.
func _ready():
	#screensize = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	velocity.x = x_speed
	velocity.y = y_speed
	position += velocity * delta
	#position.x = clamp(position.x, 0, screensize.x)
	#position.y = clamp(position.y, 0, screensize.y)
	#pass
