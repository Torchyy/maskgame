extends Node2D


func _on_button_pressed() -> void:
	var level := load("res://main.tscn")
	var isntance = level.instantiate()
	$"/root/Main/World".add_child(isntance)
	
	$"..".queue_free()
