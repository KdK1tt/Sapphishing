extends Node2D

enum State { READY, WAITING, BITE, RESULT }

var state := State.READY
var bite_window := 0.8

var bobber_start_position := Vector2(210, 500)
var cast_position: Vector2
var cast_arc_height := 120
var bite_dip_distance := 20
var pole_rest_rotation := 0.0
var pole_cast_back_rotation := deg_to_rad(-18)
var pole_cast_forward_rotation := deg_to_rad(10)
var water_surface_y := 420
var fish_reveal_start_position: Vector2
var fish_reveal_start_scale: Vector2
var inventory_open := false

#var fish_inventory := {}


var caught_fish = null

var fish_pool = [
	{
		"name": "Coffee Shop AU Fish",
		"texture": preload("res://assets/fish/coffee_shop_au_fish.png")
	},
	{
		"name": "Flower Shop AU Fish",
		"texture": preload("res://assets/fish/flower_shop_au_fish.png")
	},
	{
		"name": "Friends to Lovers Fishes",
		"texture": preload("res://assets/fish/friends_to_lovers_fishes.png")
	},
	{
		"name": "Hurt Comfort Fish",
		"texture": preload("res://assets/fish/hurt_comfort_fish.png")
	},
	{
		"name": "Meet Cute Seafood",
		"texture": preload("res://assets/fish/meet_cute_seafood.png")
	},
	{
		"name": "Power Couple Fishes",
		"texture": preload("res://assets/fish/power_couple_fishes.png")
	},
	{
		"name": "Secret Relationship Fish",
		"texture": preload("res://assets/fish/secret_relationship_fish.png")
	},
	{
		"name": "Situationship Fish",
		"texture": preload("res://assets/fish/situationship_fish.png")
	},
	{
		"name": "Soulmates Fish",
		"texture": preload("res://assets/fish/soulmates_fish.png")
	},
]


@onready var bobber = $Bobber
@onready var status_label = $Panel/StatusLabel
@onready var fish_reveal = $FishReveal
@onready var pole = $Pole
@onready var splash_particles = $SplashParticles
@onready var water_surface = $WaterSurface
@onready var basket = $Basket
@onready var inventory_label = $Basket/InventoryLabel
@onready var inventory_panel = $InventoryPanel
@onready var inventory_popup_label = $InventoryPanel/InventoryPopupLabel
@onready var basket_click_area = $Basket/BasketClickArea

#not in use yet
var rods = {
	"Starter Rod": {
		"Coffee Shop AU Fish": 10,
		"Flower Shop AU Fish": 10,
		"Secret Relationship Fish": 2
	}
}

func update_inventory_label() -> void:
	inventory_label.text = GameState.get_inventory_text()

#add fish to inventory helper function
func add_fish_to_inventory(fish_name: String) -> void:
	GameState.add_fish(fish_name)
	update_inventory_label()
	


#helper function for spash
func show_splash(pos: Vector2) -> void:
	splash_particles.position = pos
	splash_particles.restart()
	splash_particles.emitting = true
	
	

func _ready() -> void:
	state = State.READY
	inventory_label.text = ""
	inventory_panel.visible = false
	basket_click_area.input_event.connect(_on_basket_click_area_input_event)
	cast_position = water_surface.global_position
	bobber.visible = false
	fish_reveal.visible = false
	fish_reveal_start_position = fish_reveal.global_position
	fish_reveal_start_scale = fish_reveal.scale
	pole_rest_rotation = pole.rotation
	status_label.text = "Press Space or Click to cast."
	
func toggle_inventory_panel() -> void:
	if state == State.WAITING or state == State.BITE:
		status_label.text = "Finish fishing first!"
		return

	inventory_open = not inventory_open
	inventory_panel.visible = inventory_open

	if inventory_open:
		update_inventory_popup_label()
	
func _on_basket_click_area_input_event(viewport, event, shape_idx) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_inventory_panel()
		
#helper function for casting animation
func play_cast_animation() -> void:
	var tween := create_tween()
	tween.set_trans(Tween.TRANS_SINE)

	tween.set_ease(Tween.EASE_IN_OUT)

	tween.tween_property(pole, "rotation", pole_rest_rotation + pole_cast_back_rotation, 0.18)
	tween.tween_property(pole, "rotation", pole_rest_rotation + pole_cast_forward_rotation, 0.22)
	tween.tween_property(pole, "rotation", pole_rest_rotation, 0.25)

	await tween.finished
	if inventory_open:
		return
func wait_until_inventory_closed() -> void:
	while inventory_open:
		await get_tree().process_frame
			
func _unhandled_input(event) -> void:
	if inventory_open:
		return

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
	status_label.text = "Casting..."

	fish_reveal.visible = false
	

	bobber.visible = true
	bobber.position = bobber_start_position
	bobber.scale = Vector2.ONE
	
	play_cast_animation()

	var midpoint := (bobber_start_position + cast_position) / 2
	midpoint.y -= cast_arc_height

	var tween := create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_OUT)

	tween.tween_property(bobber, "position", midpoint, 0.25)
	tween.tween_property(bobber, "position", cast_position, 0.35)


	await tween.finished
	if inventory_open:
		return
	show_splash(bobber.global_position)

	bobber.scale = Vector2(1.2, 0.8)
	var land_tween := create_tween()
	land_tween.tween_property(bobber, "scale", Vector2.ONE, 0.15)

	status_label.text = "Waiting..."

	await get_tree().create_timer(randf_range(1.5, 4.0)).timeout

	await wait_until_inventory_closed()

	if state == State.WAITING:
		start_bite()



func start_bite() -> void:
	state = State.BITE
	status_label.text = "BITE!"

	bobber.position.y += bite_dip_distance
	show_splash(bobber.global_position)

	await get_tree().create_timer(bite_window).timeout

	await wait_until_inventory_closed()

	if state == State.BITE:
		state = State.RESULT
		status_label.text = "It got away! Press Space to try again."


func catch_fish() -> void:
	state = State.RESULT

	caught_fish = fish_pool.pick_random()

	status_label.text = "Caught " + caught_fish["name"] + ", adding to the fish basket!"

	bobber.visible = false

	# Reset reveal sprite back to its display spot before showing it
	fish_reveal.texture = caught_fish["texture"]
	fish_reveal.global_position = fish_reveal_start_position
	fish_reveal.scale = fish_reveal_start_scale
	fish_reveal.modulate.a = 0.0
	fish_reveal.visible = true

	var reveal_tween := create_tween()
	reveal_tween.tween_property(fish_reveal, "modulate:a", 1.0, 0.4)

	await reveal_tween.finished
	if inventory_open:
		return
	await get_tree().create_timer(2.0).timeout

	var fly_tween := create_tween()
	fly_tween.set_parallel(true)
	fly_tween.set_trans(Tween.TRANS_SINE)
	fly_tween.set_ease(Tween.EASE_IN_OUT)

	fly_tween.tween_property(fish_reveal, "global_position", basket.global_position, 0.6)
	fly_tween.tween_property(fish_reveal, "scale", Vector2(0.2, 0.2), 0.6)
	fly_tween.tween_property(fish_reveal, "modulate:a", 0.0, 0.6)

	await fly_tween.finished
	if inventory_open:
		return

	fish_reveal.visible = false
	add_fish_to_inventory(caught_fish["name"])
	
	status_label.text = "Added! Press Space to cast again."

func update_inventory_popup_label() -> void:
	inventory_popup_label.text = GameState.get_inventory_text()

func reset_cast() -> void:
	state = State.READY
	bobber.visible = false

	fish_reveal.visible = false
	fish_reveal.global_position = fish_reveal_start_position
	fish_reveal.scale = fish_reveal_start_scale
	fish_reveal.modulate.a = 1.0

	status_label.text = "Press Space to cast."
