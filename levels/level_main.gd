extends Node2D

@export var Camera : Camera2D
@export var User : Player

func _ready() -> void:
	PlayerStats.reset()
	camera_hub()

func camera_hub():
	Camera.global_position = Vector2.ZERO


func _teleport_hub_to_war_entered(body: Node2D) -> void:
	Camera.global_position = $WarRoom.global_position
	User.global_position.x = $MarkerWar.global_position.x


func _teleport_war_to_hub_entered(body: Node2D) -> void:
	camera_hub()
	User.global_position.x = $MarkerWarToHub.global_position.x


func _teleport_hub_to_death_entered(body: Node2D) -> void:
	pass # Replace with function body.


func teleport_hub_to_conquest_entered(body: Node2D) -> void:
	pass # Replace with function body.


func teleport_hub_to_famine_entered(body: Node2D) -> void:
	pass # Replace with function body.
