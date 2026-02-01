class_name Keypad
extends Interactable

signal access_granted

var current_room = "war"

@onready var input_modal: InputModal = $InputModal

var codes = {
	"conquest": "2310",
	"war": "king's sacred edge",
	"death": "203088",
}

func _ready():
	input_modal.code_entered.connect(_on_modal_code_entered)
	
	
func execute() -> void:
	input_modal.show()
	
	print("OPEN MODAL")


func _on_modal_code_entered(submitted_text: String):
	if submitted_text == codes[current_room]:
		access_granted.emit()
		print("GREEN PINPAD")
	else: 
		print("RED PINPAD 3sec")
	
