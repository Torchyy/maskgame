class_name InputModal extends Control

signal code_entered(text)
signal can_move_inner(data)

@onready var line_edit: LineEdit = $Modal/MarginContainer/VBoxContainer/HBoxContainer/LineEdit

func _ready() -> void:
	line_edit.text_submitted.connect(_on_LineEdit_text_entered)

func _on_LineEdit_text_entered(new_text: String) -> void:
	code_entered.emit(new_text)
	line_edit.clear()
	hide()

func on_display() -> void:
	line_edit.on_display()


func _on_cancel_button_pressed() -> void:
	can_move_inner.emit(true)
	hide()
