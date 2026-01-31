extends CharacterBody2D


const SPEED = 135.0

@export var AnimPlayer : AnimationPlayer
@export var InteractArea : Area2D
var last_dir := "down"

func _physics_process(_delta: float) -> void:
	# Handle interact
	if InteractArea.has_overlapping_areas():
		var area := InteractArea.get_overlapping_areas()[0] as Interactable
		# Interact with body
		if Input.is_action_just_pressed("interact") && area:
			area.execute()
		
	# Get the input direction and handle the movement
	velocity = Input.get_vector("left", "right", "up", "down")
	velocity.normalized()
	handle_animations()
	velocity *= SPEED
	
	move_and_slide()

func handle_animations():
	if Input.is_action_pressed("up"):
		AnimPlayer.play("walk_up")
		last_dir = "up"
	elif Input.is_action_pressed("down"):
		AnimPlayer.play("walk_down")
		last_dir = "down"
	elif Input.is_action_pressed("left"):
		AnimPlayer.play("walk_left")
		last_dir = "left"
	elif Input.is_action_pressed("right"):
		AnimPlayer.play("walk_right")
		last_dir = "right"
	else:
		AnimPlayer.play("idle_" + last_dir)
