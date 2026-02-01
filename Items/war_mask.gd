class_name WarMask extends Mask

func execute() -> void:
	if PlayerStats.warDone:
		return
	PlayerStats.maskInventory.append(self)
	PlayerStats.mask_added.emit()
	PlayerStats.warDone = true
	monitorable = false
