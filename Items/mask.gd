class_name Mask
extends Interactable

func get_icon() -> CompressedTexture2D:
	return null

@onready var accessGranted := false :
	set(val):
		accessGranted = val
		self.monitorable = val

func _ready() -> void:
	self.monitorable = false
