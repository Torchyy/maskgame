extends Control

@onready var btn1 = $Button
@onready var btn2 = $Button2
@onready var btn3 = $Button3
@onready var btn4 = $Button4

var sprite1 : CompressedTexture2D
var sprite2 : CompressedTexture2D
var sprite3 : CompressedTexture2D
var sprite4 : CompressedTexture2D

func on_show_display():
	var btns : Array[Button] = [btn1, btn2, btn3, btn4]
	var sprites : Array[CompressedTexture2D] = [sprite1, sprite2, sprite3, sprite4]
	for mask in PlayerStats.maskInventory:
		var i = PlayerStats.maskInventory.find(mask)
		btns[i].icon = mask.get_icon()
		sprites[i] = mask.get_icon()


func _on_button_pressed() -> void:
	$Sprite2D3.texture = sprite1


func _on_button_2_pressed() -> void:
	$Sprite2D4.texture = sprite2


func _on_button_3_pressed() -> void:
	$Sprite2D5.texture = sprite3


func _on_button_4_pressed() -> void:
	$Sprite2D6.texture = sprite4
