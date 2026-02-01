class_name FamineMask extends Mask

func _ready() -> void:
	monitorable = true
	

func execute() -> void:
	if PlayerStats.famineDone:
		return
	PlayerStats.maskInventory.append(self)
	PlayerStats.mask_added.emit()
	PlayerStats.famineDone = true
	monitorable = false

func get_icon() -> CompressedTexture2D:
	return $FamineMask.texture
