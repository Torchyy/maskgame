extends Node2D

@onready var keypad: Keypad = $Keypad
signal can_move_to_player(data)
	
func _ready():
	keypad.current_room = "death"
	keypad.connect("access_granted", _on_access_granted)
	keypad.connect("can_move", _on_can_move_update)
	
func _on_access_granted():
	if PlayerStats.deathDone:
		return
	$MaskCase.open_case()
	$DeathMask.accessGranted = true

func _on_can_move_update(isTrue: bool):
	can_move_to_player.emit(isTrue)
