class_name ConquestMask
extends Mask

func execute() -> void:
	if PlayerStats.conquestDone:
		return
	PlayerStats.maskInventory.append(self)
	PlayerStats.mask_added.emit()
	PlayerStats.conquestDone = true
	monitorable = false
