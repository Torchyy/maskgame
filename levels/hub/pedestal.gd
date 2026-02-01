class_name Pedestal
extends Interactable

func execute():
	if PlayerStats.maskInventory.size() >= 4:
		$"../../ColorRect".visible = true
