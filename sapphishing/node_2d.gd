extends Node2D

enum State { READY, WAITING, BITE, RESULT }

var state := State.READY
var bite_window := 0.8

var cast_position := Vector2(655, 455)
var bite_dip_distance := 20

@onready var bobber = $Bobber
@onready var status_label = $Panel/StatusLabel
@onready var fish_reveal = $FishReveal


func _ready() -> void:
	state = State.READY
	bobber.visible = false
	fish_reveal.visible = false
	status_label.text = "Press Space or Click to cast."


func _input(event) -> void:
	if event.is_action_pressed("start_game"):
		match state:
			State.READY:
				cast_line()
			State.BITE:
				catch_fish()
			State.RESULT:
				reset_cast()


func cast_line() -> void:
	state = State.WAITING
	status_label.text = "Waiting..."

	bobber.position = cast_position
	bobber.visible = true

	await get_tree().create_timer(randf_range(1.5, 4.0)).timeout

	if state == State.WAITING:
		start_bite()


func start_bite() -> void:
	state = State.BITE
	status_label.text = "BITE!"

	bobber.position.y += bite_dip_distance

	await get_tree().create_timer(bite_window).timeout

	if state == State.BITE:
		state = State.RESULT
		status_label.text = "It got away! Press space or click to try sagain."


func catch_fish() -> void:
	state = State.RESULT
	status_label.text = "Caught Coffee Shop AU Fish! \n It has been added to your fish basket!"

	bobber.position.y -= bite_dip_distance

	fish_reveal.visible = true
	fish_reveal.modulate.a = 0.0

	var tween = create_tween()
	tween.tween_property(fish_reveal, "modulate:a", 1.0, 0.5)


func reset_cast() -> void:
	state = State.READY
	bobber.visible = false
	fish_reveal.visible = false
	status_label.text = "Press Space or Click to cast."
