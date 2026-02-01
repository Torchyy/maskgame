class_name Mask
extends Interactable

@onready var accessGranted := false :
	set(val):
		accessGranted = val
		self.monitorable = val

func _ready() -> void:
	self.monitorable = false
