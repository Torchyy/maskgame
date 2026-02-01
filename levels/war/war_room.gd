extends Node2D

@onready var keypad: Keypad = $Keypad
	
func _ready():
	keypad.connect("access_granted", _on_access_granted)
	
func _on_access_granted():
	$Sprite2D2/MaskCase.open_case()
