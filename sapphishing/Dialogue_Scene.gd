extends Node2D

@onready var speaker_label = $DialoguePanel/SpeakerLabel
@onready var dialogue_label = $DialoguePanel/DialogueLabel
@onready var next_button = $DialoguePanel/NextButton

var dialogue_lines: Array = []
var dialogue_index := 0


func _ready() -> void:
	if not next_button.pressed.is_connected(advance_dialogue):
		next_button.pressed.connect(advance_dialogue)

	load_dialogue()
	show_current_line()
	 

func load_dialogue() -> void:
	var order: Dictionary = GameState.get_current_npc_order()

	if GameState.pending_dialogue_phase == "after":
		dialogue_lines = order["after_transaction"]
	else:
		dialogue_lines = order["before_transaction"]

	dialogue_index = 0


func show_current_line() -> void:
	if dialogue_index >= dialogue_lines.size():
		finish_dialogue()
		return

	var line: Dictionary = dialogue_lines[dialogue_index]

	speaker_label.text = line.get("speaker", "")
	dialogue_label.text = line.get("text", "")

	if dialogue_index == dialogue_lines.size() - 1:
		if GameState.pending_dialogue_phase == "before":
			next_button.text = "Serve Fish"
		else:
			next_button.text = "Finish"
	else: 
		next_button.text = "Next"


func advance_dialogue() -> void:
	dialogue_index += 1
	show_current_line()


func finish_dialogue() -> void:
	if GameState.pending_dialogue_phase == "after":
		GameState.complete_current_npc_order()
		GameState.customer_has_talked = false
		GameState.pending_dialogue_phase = ""

		if GameState.has_more_current_customer_orders():
			get_tree().change_scene_to_file(GameState.pending_return_scene)
		else:
			get_tree().change_scene_to_file("res://Credits_Scene.tscn")

		return

	GameState.pending_dialogue_phase = ""
	get_tree().change_scene_to_file(GameState.pending_return_scene)
