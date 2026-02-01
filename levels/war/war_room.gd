extends Node2D

@onready var keypad: Keypad = $Keypad
	
func _ready():
	keypad.connect("access_granted", _on_access_granted)
	
func _on_access_granted():
	if PlayerStats.warDone:
		return
	$MaskCase.open_case()
	$WarMask.accessGranted = true
