extends Node

var heldItem : Interactable

var maskInventory : Array[Mask]

# For leaderboard, use get_ticks_msec()
var startTime : int

# What masks has the player collected
var conquestDone : bool
var warDone : bool
var famineDone : bool
var deathDone : bool
signal mask_added

func reset() -> void:
	heldItem = null
	maskInventory = []
	startTime = Time.get_ticks_msec()
	conquestDone = false
	warDone = false
	famineDone = false
	deathDone = false
