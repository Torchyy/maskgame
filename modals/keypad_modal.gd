class_name InputModal extends Control

signal code_entered(text)

@onready var line_edit: LineEdit = $Modal/MarginContainer/VBoxContainer/HBoxContainer/LineEdit

func _ready() -> void:
	line_edit.text_submitted.connect(_on_LineEdit_text_entered)

func _on_LineEdit_text_entered(new_text: String) -> void:
	code_entered.emit(new_text)
	line_edit.clear()
	hide()
