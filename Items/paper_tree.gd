class_name PaperTree
extends Interactable

@onready var paper_modal: Control = $"../PaperModal"
@onready var label: Label = $"../PaperModal/ColorRect/Label"
@onready var button: Button = $"../PaperModal/Button"

var note_text = {
	"PaperTree": "1920 \n Father was taken early. His pale face was laying cold on bloody concrete. The grim reaper had come and left. I swear I will kill him.",
	"PaperTree2": "[...] \n Mother, it is done. It is done but I am haunted, no matter the justification. I have become him.",
	"PaperTree3": "1930 \n Years have passed, yet the burden remains deep. The title of Reaper claws my heart until another takes my place.",
	"PaperTree4": "1988 \n The true Reaper has come for the fake. Father, I only feel regret. My eternity will be spent with your killer- not you.",
}

func execute():
	label.text = note_text[name]
	paper_modal.show()


	
