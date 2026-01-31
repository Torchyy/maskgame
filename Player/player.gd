extends CharacterBody2D


const SPEED = 300.0


func _physics_process(_delta: float) -> void:
	# Handle interact
	if Input.is_action_just_pressed("interact"):
		pass

	# Get the input direction and handle the movement
	velocity = Input.get_vector("left", "right", "up", "down")
	velocity.normalized()
	velocity *= SPEED

	move_and_slide()
