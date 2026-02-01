extends Node2D

func open_case():
	$AudioStreamPlayer.play()
	$Sprite2D.visible = false
	$MaskCaseOpen.visible = true
