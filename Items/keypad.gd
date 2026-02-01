class_name Keypad
extends Interactable

var current_room = "war"

var codes = {
	"conquest": "2310",
	"war": "king's sacred edge",
	"death": "203088",
}

func execute() -> void:
	print("OPEN MODAL")


func check_input(input):
	if input == codes[current_room]:
		print("MODAL EXITED")
		print("GLASS BROKEN")
		print("GREEN PINPAD")
	else: 
		print("MODAL EXITED")
		print("RED PINPAD 3sec")
	
