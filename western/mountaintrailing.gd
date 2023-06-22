extends CharacterBody2D


const SPEED = 60.0
const JUMP_VELOCITY = -100

# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_leftboundary_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if body == player:
		
