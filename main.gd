extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	$World/MainMenu.queue_free()
	var scene := load("res://levels/level_main.tscn")
	var instance = scene.instantiate()
	$World.add_child(instance)
	$AudioStreamPlayer.stop()


func _on_audio_stream_player_finished() -> void:
	$AudioStreamPlayer.play()
