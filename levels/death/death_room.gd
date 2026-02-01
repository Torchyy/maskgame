extends Node2D

@onready var keypad: Keypad = $Keypad

func _ready():
	keypad.current_room = "death"
	keypad.connect("access_granted", _on_access_granted)

func _on_access_granted():
	pass
