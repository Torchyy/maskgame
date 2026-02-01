extends Node2D

@export var Camera : Camera2D
@export var User : Player
@export var Audio : AudioStreamPlayer

var main_theme = preload("res://music/main_theme.mp3")
var death_theme = preload("res://music/death_room.mp3")
var conquest_theme = preload("res://music/conquest_theme.mp3")
var current_song

func _ready() -> void:
	PlayerStats.reset()
	camera_hub()
	current_song = main_theme

func camera_hub():
	Camera.global_position = Vector2.ZERO


func _teleport_hub_to_war_entered(body: Node2D) -> void:
	current_song = conquest_theme
	Camera.global_position = $WarRoom.global_position
	User.global_position.x = $MarkerWar.global_position.x

func _teleport_war_to_hub_entered(body: Node2D) -> void:
	current_song = main_theme
	camera_hub()
	User.global_position.x = $MarkerWarToHub.global_position.x


func teleport_hub_to_conquest_entered(body: Node2D) -> void:
	current_song = conquest_theme
	Camera.global_position = $ConquestRoom.global_position
	User.global_position.y = $MarkerConquest.global_position.y

func _teleport_conquest_to_hub_entered(body: Node2D) -> void:
	current_song = main_theme
	camera_hub()
	User.global_position.y = $MarkerConquestToHub.global_position.y


func _teleport_hub_to_death_entered(body: Node2D) -> void:
	current_song = death_theme
	Camera.global_position = $DeathRoom.global_position
	User.global_position.x = $MarkerDeath.global_position.x

func teleport_death_to_hub_entered(body: Node2D) -> void:
	current_song = main_theme
	camera_hub()
	User.global_position.x = $MarkerDeathToHub.global_position.x


func teleport_famine_to_hub_entered(body: Node2D) -> void:
	current_song = main_theme
	camera_hub()
	User.global_position.y = $MarkerFamineToHub.global_position.y

func teleport_hub_to_famine_entered(body: Node2D) -> void:
	current_song = death_theme
	Camera.global_position = $FamineRoom.global_position
	User.global_position.y = $MarkerFamine.global_position.y


func _on_audio_stream_player_finished() -> void:
	Audio.stream = current_song
	Audio.play()
