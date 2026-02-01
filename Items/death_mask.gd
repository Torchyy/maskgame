class_name DeathMask extends Mask

func execute() -> void:
	if PlayerStats.deathDone:
		return
	PlayerStats.maskInventory.append(self)
	PlayerStats.mask_added.emit()
	PlayerStats.deathDone = true
	monitorable = false
