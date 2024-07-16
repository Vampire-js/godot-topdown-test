extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	# Add the gravity.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX = Input.get_axis("Left" , "Right")
	var directionY = Input.get_axis("Up" , "Down")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
	velocity.x = directionX * SPEED
	velocity.y = directionY * SPEED

	move_and_slide()
