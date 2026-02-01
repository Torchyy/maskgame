extends Node2D

@export var Camera : Camera2D
@export var User : Player
@export var Audio : AudioStreamPlayer2D

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


func teleport_hub_to_conquest_entered(body: Node2D) -> void:
	Camera.global_position = $ConquestRoom.global_position
	User.global_position.y = $MarkerConquest.global_position.y

func _teleport_conquest_to_hub_entered(body: Node2D) -> void:
	camera_hub()
	User.global_position.y = $MarkerConquestToHub.global_position.y


func _teleport_hub_to_death_entered(body: Node2D) -> void:
	Camera.global_position = $DeathRoom.global_position
	User.global_position.x = $MarkerDeath.global_position.x

func teleport_death_to_hub_entered(body: Node2D) -> void:
	camera_hub()
	User.global_position.x = $MarkerDeathToHub.global_position.x


func teleport_famine_to_hub_entered(body: Node2D) -> void:
	camera_hub()
	User.global_position.y = $MarkerFamineToHub.global_position.y

func teleport_hub_to_famine_entered(body: Node2D) -> void:
	Camera.global_position = $FamineRoom.global_position
	User.global_position.y = $MarkerFamine.global_position.y
