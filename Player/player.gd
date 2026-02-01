class_name Player
extends CharacterBody2D


const SPEED = 90.0

@export var AnimPlayer : AnimationPlayer
@export var InteractArea : Area2D
var last_dir := "down"
var can_move = true

func _physics_process(_delta: float) -> void:
	# Handle interact
	if InteractArea.has_overlapping_areas():
		var area := InteractArea.get_overlapping_areas()[0] as Interactable
		# Show interact key display
		#TODO
		# Interact with body
		if Input.is_action_just_pressed("interact") && area:
			area.execute()
		
	# Get the input direction and handle the movement
	if can_move:
		velocity = Input.get_vector("left", "right", "up", "down")
		velocity.normalized()
		handle_animations()
		velocity *= SPEED
		
		move_and_slide()
	else:
		AnimPlayer.play("idle_" + last_dir)
		

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


func _on_war_room_can_move_to_player(data: Variant) -> void:
	can_move = data


func _on_death_room_can_move_to_player(data: Variant) -> void:
	can_move = data


func _on_conquest_room_can_move_to_player(data: Variant) -> void:
	can_move = data
