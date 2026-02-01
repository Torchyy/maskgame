class_name FamineMask extends Mask

func execute() -> void:
	if PlayerStats.famineDone:
		return
	PlayerStats.maskInventory.append(self)
	PlayerStats.mask_added.emit()
	PlayerStats.famineDone = true
	monitorable = false
