extends Node2D

#TODO FOR KITT:
		#- #46BBFF when Avery (including as "???") is speaking
		#- #F0F7FF when Narrator is speaking
	#Shrink + dim/darken LeftCharacter when not the one speaking

@onready var character_portrait = $LeftCharacter
# Dialogue Panel
@onready var speaker_label = $DialoguePanel/DialogueBackground/SpeakerLabel
@onready var dialogue_label = $DialoguePanel/DialogueLabel
@onready var next_button = $DialoguePanel/NextButton
@onready var dialogue_background = $DialoguePanel/DialogueBackground
@onready var player_dialogue_background = $DialoguePanel/PlayerDialogueBackground
@onready var dialogue_panel = $DialoguePanel

var dialogue_lines: Array = []
var dialogue_index := 0



func _ready() -> void:
	if not next_button.pressed.is_connected(advance_dialogue):
		next_button.pressed.connect(advance_dialogue)

	load_dialogue()
	show_current_line()
	load_song()
	
func load_song() -> void:
	var song_path: String = GameState.get_current_npc_theme()
	MusicManager.play_song(song_path)
	 

func load_dialogue() -> void:
	var order: Dictionary = GameState.get_current_npc_order()
	
	if GameState.current_customer == "Avery":
		character_portrait.texture = preload("res://assets/portrait/silhouette_purple-blue_NEW.png")
	elif GameState.current_customer == "Sophia":
		character_portrait.texture = preload("res://assets/portrait/silhouette_red-purple_NEW.png")
	else:
		character_portrait.texture = preload("res://assets/portrait/silhouette_green-blue_NEW.png")
		
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


	speaker_label.text = line.get("speaker", "  ")
	dialogue_label.text = line.get("text", "")

	var speaker: String = line.get("speaker", "")
	var active_npc: String = GameState.current_customer
	
	if (speaker == "Avery" or speaker == "???") and active_npc == "Avery":
		dialogue_background.visible = true
		player_dialogue_background.visible = false
		speaker_label.add_theme_color_override("font_color", Color(0.299, 0.678, 1.0, 1.0))
		dialogue_background.texture = preload("res://assets/ui/scene_selling/textbox/dialogue_box_blue-purple.png")
		character_portrait.modulate.v = 1.0
	elif (speaker == "Sophia" or speaker == "???") and active_npc == "Sophia":
		dialogue_background.visible = true
		player_dialogue_background.visible = false
		speaker_label.add_theme_color_override("font_color", Color(0.949, 0.2, 0.4, 1.0))
		dialogue_background.texture = preload("res://assets/ui/scene_selling/textbox/dialogue_box_red-purple.png")
		character_portrait.modulate.v = 1.0
	elif (speaker == "Asani" or speaker == "???") and active_npc == "Asani":
		dialogue_background.visible = true
		player_dialogue_background.visible = false
		speaker_label.add_theme_color_override("font_color", Color(0.0, 0.82, 0.6, 1.0))
		dialogue_background.texture = preload("res://assets/ui/scene_selling/textbox/dialogue_box_green-blue.png")
		character_portrait.modulate.v = 1.0
	elif (speaker == "You"):
		dialogue_background.visible = false
		player_dialogue_background.visible = true
		character_portrait.modulate.v = 0.6
	else:
		dialogue_background.visible = true
		player_dialogue_background.visible = false
		speaker_label.add_theme_color_override("font_color", Color(0.941, 0.969, 1.0, 1.0))
		dialogue_background.texture = preload("res://assets/ui/scene_selling/textbox/dialogue_box_black.png")
		character_portrait.modulate.v = 0.6

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
		GameState.force_npc_music = false
		GameState.pending_dialogue_phase = ""

		if GameState.has_more_current_customer_orders():
			get_tree().change_scene_to_file(GameState.pending_return_scene)
			return

		if GameState.advance_to_next_customer():
			get_tree().change_scene_to_file(GameState.pending_return_scene)
		else:
			get_tree().change_scene_to_file("res://Credits_Scene.tscn")

		return

	GameState.pending_dialogue_phase = ""
	get_tree().change_scene_to_file(GameState.pending_return_scene)
