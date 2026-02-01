class_name Board
extends Interactable

@onready var poem_gui: Node2D = $"../PoemGui"

func execute():
	poem_gui.show()
