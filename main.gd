extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	$World/MainMenu.queue_free()
	var scene := preload("res://levels/level_main.tscn")
	var instance = scene.instantiate()
	PlayerStats.reset()
	$World.add_child(instance)
	$AudioStreamPlayer.stop()


func _on_audio_stream_player_finished() -> void:
	$AudioStreamPlayer.play()
