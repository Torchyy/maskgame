class_name Keypad
extends Interactable

signal access_granted
signal can_move(isTrue)

@onready var input_modal: InputModal = $InputModal

var current_room: String = ""

var codes = {
	"conquest": "2310",
	"war": "king's sacred edge",
	"death": "203088",
}

func _ready():
	input_modal.code_entered.connect(_on_modal_code_entered)
	
	
func execute() -> void:
	input_modal.show()
	can_move.emit(false)
	print("OPEN MODAL")


func _on_modal_code_entered(submitted_text: String):
	can_move.emit(true)
	if submitted_text.to_lower() == codes[current_room]:
		access_granted.emit()
		print("GREEN PINPAD")
	else: 
		print("RED PINPAD 3sec")
	
