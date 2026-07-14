extends Node2D

@onready var restart_button = $RestartButton

func _ready() -> void:
	restart_button.pressed.connect(restart_game)

func restart_game() -> void:
	GameState.fish_inventory.clear()
	GameState.discovered_fish.clear()
	GameState.money = 0
	GameState.npc_progress["Avery"] = 0
	GameState.customer_has_talked = false
	GameState.pending_dialogue_phase = ""
	GameState.current_customer = "Avery"

	get_tree().change_scene_to_file("res://Main.tscn")
