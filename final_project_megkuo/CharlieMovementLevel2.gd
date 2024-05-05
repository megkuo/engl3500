extends CharacterBody2D
var force_coefficient = 20
var apply_gravity : bool
var gravity = ProjectSettings.get("physics/2d/default_gravity")
var amount_moved = 0

@export var jump_height : float ## How high should they jump?
@export var movement_speed : float ## How fast can they move?
@export var horizontal_air_coefficient : float ## Should the player move more slowly left and right in the air? Set to zero for no movement, 1 for the same
# ^^ i.e. how much can you move horizontally while the character is in the air
@export var speed_limit : float ## What is the player's max speed? 
@export var friction : float ## What friction should they experience on the ground?

signal moving 
signal stopped 

# Called when the node enters the scene tree for the first time.
func _ready():
	#if self.motion_mode == 0: # Motion Mode 0 is for "grounded", which is like a platformer
		#apply_gravity = true
	#else: 
		#apply_gravity = false # Motion Mode 1 is for "floating", which is for top-down games
	gravity = Vector2(0, 30) 
	amount_moved = speed_limit
	pass # Replace with function body.

func _get_input(delta):
	#var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	# input detection
	if is_on_floor(): # inherited from CharacterBody2D
		#if Input.is_action_pressed("move_left"): # moves character to left when left input is detected
			#velocity += Vector2(-movement_speed,0)

		if Input.is_action_pressed("move_right"): # moves character to right when right input is detected
			velocity += Vector2(movement_speed,0)
			if movement_speed > 0:
				speed_limit = amount_moved
				movement_speed = amount_moved
				moving.emit()
				#print("EMITTING")
			#print(movement_speed)
			else:
				stopped.emit()
			amount_moved -= 1.5
			
			

		#if Input.is_action_just_pressed("jump"): # Jump only happens when we're on the floor (unless we want a double jump, but we won't use that here)
			#velocity += Vector2(1,-jump_height)

	if not is_on_floor():
		if Input.is_action_pressed("move_left"): # moves character to left when left input is detected
			velocity += Vector2(-movement_speed * horizontal_air_coefficient,0)

		if Input.is_action_pressed("move_right"): # moves character to left when left input is detected
			velocity += Vector2(movement_speed * horizontal_air_coefficient,0)
	
	# logic for crouching
	if Input.is_action_pressed("crouch"):
			# scales GodotBot so that the y is half the size
			scale = Vector2(1, 0.5) # can look up attributes of CharacterBody2D/Node2D
			pass
			
	if not Input.is_action_pressed("crouch"):
		# scale GodotBot's so that the y is half the size
		scale = Vector2(1, 1)
		pass
		
func _apply_gravity():
	# have to add gravity to CharacterBody2D manually because Godot doesn't do it automatically
	if not is_on_floor():
		velocity += gravity # increments y velocity by gravity? 
		
func _crouch_check():
	# how to prevent reversing crouching if there is not enough room? maybe need to detect if becomes in contact wiith ceiling
	#print("ceiling:", is_on_ceiling())s
	#print("floor:", is_on_floor())
	if is_on_ceiling(): # and is_on_floor():
		scale = Vector2(1, .5) # would need to adjust hitbox? -- nevermind, should also change
	# hmm unsure -- TODO
	
func _limit_speed():
	# only affects x velocity, will cap speed at defined speed_limit by setting x-speed to speed limit
	if velocity.x > speed_limit: # checks if speed in x direction exceeds speed limit
		velocity = Vector2(speed_limit, velocity.y) # sets velocity for x to speed limit

	if velocity.x < -speed_limit:
		velocity = Vector2(-speed_limit, velocity.y)

func _apply_friction():
	# causes character to gradually come to a stop without further input
	if is_on_floor() and not (Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right")):
		velocity -= Vector2(velocity.x * friction, 0) # decrements the velocity using friction scalar value
		if abs(velocity.x) < 5: # makes the stop happen sooner, vs. dragging it out?
			velocity = Vector2(0, velocity.y) # if the velocity in x gets close enough to zero, we set it to zero

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	_get_input(delta)
	_limit_speed()
	_apply_friction()
	_apply_gravity()

	move_and_slide() # more simple version of move and collide -- would be for if boxes are getting pushed around
	_crouch_check()
	
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
	#get_input(delta)
#
	#var pre_collision_velocity
	#pre_collision_velocity = velocity # velocity goes to 0,0 when we collide, which is why we record the velocity prior to the move_and_slide() func call
	#move_and_slide()
#
	#for i in get_slide_collision_count():
		#var collision : KinematicCollision2D = get_slide_collision(i)
#
		#if collision.get_collider().get_class() == "RigidBody2D":
			#var collision_normal = collision.get_normal()
			#if collision_normal.x < 0 and pre_collision_velocity.x > 0:
				#collision_normal.x = -collision_normal.x
			#if collision_normal.y < 0 and pre_collision_velocity.y > 0:
				#collision_normal.y = -collision_normal.y
			#collision.get_collider().apply_force(pre_collision_velocity * collision_normal * force_coefficient)

		
