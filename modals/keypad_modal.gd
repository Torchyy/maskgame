class_name InputModal extends Control


@onready var header_label: Label = $Modal/MarginContainer/VBoxContainer/HeaderLabel
@onready var message_label: Label = $Modal/MarginContainer/VBoxContainer/MessageLabel
@onready var line_edit: LineEdit = $Modal/MarginContainer/VBoxContainer/HBoxContainer/LineEdit
@onready var cancel_button: Button = $Modal/MarginContainer/VBoxContainer/HBoxContainer2/CancelButton

var is_open: bool = false


func _ready() -> void:
	set_process_unhandled_key_input(false)
	
	if line_edit:
		line_edit.text_submitted.connect(_on_LineEdit_text_entered)
	
	if cancel_button:
		cancel_button.pressed.connect(_on_cancel_button_pressed)
	
	hide()
	
func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		cancel()
	
func cancel() -> void:
	_close_modal(false)	

func _close_modal(is_confirmed: bool) -> void:
	set_process_unhandled_key_input(false)
	set_deferred("is_open", false)
	hide()
	
func _on_LineEdit_text_entered(new_text: String) -> void:
	_close_modal(true)
	
func _on_cancel_button_pressed() -> void:
	pass
	
