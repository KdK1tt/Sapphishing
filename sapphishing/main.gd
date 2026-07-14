extends Node2D

var can_start := false

func _ready() -> void:
	var label = $BeginPrompt
	label.visible = false

	await get_tree().create_timer(2.0).timeout

	label.visible = true
	label.self_modulate.a = 0.0

	var tween = create_tween()
	tween.tween_property(label, "self_modulate:a", 1.0, 2.0)

	await tween.finished

	can_start = true

	var pulse = create_tween()
	pulse.set_loops()
	pulse.tween_property(label, "self_modulate:a", 0.5, 2.0)
	pulse.tween_property(label, "self_modulate:a", 1.0, 2.0)


func _input(event):
	if can_start and event.is_action_pressed("start_game"):
		get_tree().change_scene_to_file("res://FishingScene.tscn")
