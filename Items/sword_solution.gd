class_name SwordSolution
extends Interactable

@onready var sword_solution_gui: Node2D = $"../SwordSolutionGui"

func execute():
	sword_solution_gui.show()
	


func _on_button_pressed() -> void:
	hide()
