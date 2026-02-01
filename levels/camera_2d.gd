extends Camera2D

func _ready() -> void:
	PlayerStats.mask_added.connect(add_mask)


func add_mask():
	for mask in PlayerStats.maskInventory:
		mask.reparent(self)
		mask.scale = Vector2(0.75, 0.75)
		mask.global_position = $MaskStart.global_position
		mask.global_position.x += PlayerStats.maskInventory.find(mask) * 20
