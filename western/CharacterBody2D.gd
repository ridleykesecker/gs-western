extends CharacterBody2D

@onready var sprite_animation = $AnimatedSprite2D
const DEFAULT_SPEED = 130.0
const JUMP_VELOCITY = -400.0

var sprintSpeed = 240
var speed = DEFAULT_SPEED

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
	
func _physics_process(_delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * _delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_pressed("ui_sprint"):
		speed = sprintSpeed
	else:
		speed = DEFAULT_SPEED
		
	if Input.is_action_pressed("ui_left"):
		sprite_animation.flip_h = true
	elif Input.is_action_pressed("ui_right"):
		sprite_animation.flip_h = false
	else:
		sprite_animation.stop()
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	
	
	
	if direction:
		sprite_animation.play("Walking")
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()


