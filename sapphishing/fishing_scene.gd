extends Node2D

enum State { READY, WAITING, BITE, RESULT }

var state := State.READY
var bite_window := 0.8
var reward_animating := false


var bite_dip_distance := 20
var pole_rest_rotation := 0.0
var pole_cast_back_rotation := deg_to_rad(-18)
var pole_cast_forward_rotation := deg_to_rad(10)
var water_surface_y := 420
var fish_reveal_start_position: Vector2
var fish_reveal_start_scale: Vector2
var inventory_open := false
var skip_reward_pause := false
var discovery_skip_allowed := false
@export var bobber_start_position := Vector2(1350, 520)        
@export var cast_position := Vector2(925, 405)
@export var cast_arc_height := 90.0


#var fish_inventory := {} 
	
 
var caught_fish = null 
  
var fish_pool = [  
	"Coffee Shop AU",
	"Flower Shop AU", 
	"Friends to Lovers",
	"Hurt Comfort",
	"Meet Cute",
	"Power Couple",
	"Secret Relationship",
	"Situationship",
	"Soulmates",
]

# Future fish ideas:
# Fake Dating Fish:
# "When you have to keep up appearances and then catch feelings and it becomes Real Dating."
#
# Accidental Marriage Clam:
# "You had too much to drink in Vegas and now you've woken up next to your crush with rings on your fingers."
#
# Sharing a Bed Fish:
# "You couldn't POSSIBLY make your crush sleep on the floor, and for some reason they won't let YOU sleep on the floor either."
#
# Mutual Pining Fish:
# "You know you should just talk to each other about your feelings. Will you? Ha ha, don't be ridiculous."

@onready var bobber = $Bobber
@onready var status_label = $Panel/StatusLabel
@onready var fish_reveal = $FishReveal
@onready var pole = $Pole
@onready var splash_particles = $Background/SplashParticles
@onready var water_surface = $Background/WaterSurface
@onready var basket = $PropContainer/FishBucket
# @onready var inventory_label = $TackleBox/InventoryLabel
@onready var inventory_panel = $InventoryPanel
@onready var basket_click_area = $PropContainer/FishBucket/FishBucketClickArea
@onready var discovery_panel = $DiscoveryPanel
@onready var discovery_name_label = $DiscoveryPanel/DiscoveryNameLabel
@onready var discovery_description_label = $DiscoveryPanel/DiscoveryDescriptionLabel
@onready var discovery_fish_texture = $DiscoveryFishTexture
@onready var discovery_header_label = $DiscoveryPanel/DiscoveryHeaderLabel
@onready var inventory_rows = $InventoryPanel/InventoryRows
@onready var fish_preview_panel = $InventoryPanel/FishPreview
@onready var preview_texture = $InventoryPanel/FishPreview/PreviewTexture
@onready var preview_name_label = $InventoryPanel/FishPreview/PreviewNameLabel
@onready var preview_value_label = $InventoryPanel/FishPreview/PreviewValueLabel
@onready var preview_description = $InventoryPanel/FishPreview/PreviewDescription
@onready var go_to_stall_button = $GoToStallButton


#not in use yet
var rods = {
	"Starter Rod": {
		"Coffee Shop AU Fish": 10,
		"Flower Shop AU Fish": 10,
		"Secret Relationship Fish": 2
	}
}

func update_inventory_popup() -> void:
	print("Updating inventory popup")
	print("Inventory contents: ", GameState.fish_inventory)

	for child in inventory_rows.get_children():
		child.queue_free()

	fish_preview_panel.visible = false
 
	if GameState.fish_inventory.is_empty():
		var empty_label := Label.new()
		empty_label.text = "Fish basket is empty."
		empty_label.custom_minimum_size = Vector2(400, 32)
		empty_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
		inventory_rows.add_child(empty_label)
		return

	for fish_name in GameState.fish_inventory.keys():
		var count: int = GameState.fish_inventory[fish_name]
		var fish_data := GameState.get_fish_data(fish_name)
		var value: int = fish_data["value"]

		var row := Label.new()
		row.text = fish_name + " x" + str(count) + "  ($" + str(value) + ")"
		row.custom_minimum_size = Vector2(400, 32)
		row.mouse_filter = Control.MOUSE_FILTER_STOP

		row.mouse_entered.connect(func():
			show_fish_preview(fish_name)
		)

		row.mouse_exited.connect(func():
			hide_fish_preview()
		)

		inventory_rows.add_child(row)

	print("Inventory rows created: ", inventory_rows.get_child_count())
	
	
func load_song() -> void:
	if GameState.force_npc_music:
		MusicManager.play_song(GameState.get_current_npc_theme())
	else:
		MusicManager.play_song("res://fishin_time_wip02.mp3")


func show_fish_preview(fish_name: String) -> void:
	var fish_data := GameState.get_fish_data(fish_name)

	preview_name_label.text = fish_name
	preview_value_label.text = "$" + str(fish_data["value"])
	preview_description.text = fish_data["description"]
	preview_texture.texture = fish_data["texture"]

	fish_preview_panel.visible = true
	
func wait_for_discovery_continue(min_seconds: float) -> void:
	skip_reward_pause = false
	discovery_skip_allowed = false

	var elapsed := 0.0

	while not skip_reward_pause:
		await get_tree().process_frame
		elapsed += get_process_delta_time()

		if elapsed >= min_seconds:
			discovery_skip_allowed = true


func hide_fish_preview() -> void:
	fish_preview_panel.visible = false
	
func show_new_fish_discovery(fish_data: Dictionary) -> void:
	discovery_fish_texture.texture = fish_data["texture"]
	discovery_panel.visible = true
	discovery_fish_texture.visible = true
	discovery_fish_texture.modulate.a = 0.0


	discovery_header_label.text = "New fish discovered!"
	discovery_name_label.text = fish_data["name"]
	discovery_description_label.text = fish_data["description"]

	var tween := create_tween()
	tween.tween_property(discovery_fish_texture, "modulate:a", 1.0, 0.35)
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC).tween_property(discovery_panel, "position:y", 0, 0.2)

	await tween.finished

	status_label.text = "New fish discovered! Press Space when ready."

	await wait_for_discovery_continue(0.5)

	var out_tween := create_tween()
	# out_tween.tween_property(discovery_fish_texture, "modulate:a", 0.0, 0.25)
	out_tween.set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_CUBIC).tween_property(discovery_panel, "position:y", 1080, 0.2)

	await out_tween.finished

	discovery_panel.visible = false
	discovery_fish_texture.visible = false
	discovery_skip_allowed = false

#add fish to inventory helper function
func add_fish_to_inventory(fish_name: String) -> void:
	GameState.add_fish(fish_name)

	if inventory_open:
		update_inventory_popup()
	
func wait_for_discovery_pause(min_seconds: float, max_seconds: float) -> void:
	skip_reward_pause = false
	discovery_skip_allowed = false

	var elapsed := 0.0

	while elapsed < max_seconds and not skip_reward_pause:
		await get_tree().process_frame
		elapsed += get_process_delta_time()

		if elapsed >= min_seconds:
			discovery_skip_allowed = true

	discovery_skip_allowed = false

#helper function for spash
func show_splash(pos: Vector2) -> void:
	splash_particles.position = pos
	splash_particles.restart()
	splash_particles.emitting = true
	   
	

func _ready() -> void:
	state = State.READY
	# inventory_label.text = ""
	inventory_panel.visible = false
	inventory_panel.position.y = 1080
	basket_click_area.input_event.connect(_on_basket_click_area_input_event)
	bobber.visible = false
	fish_reveal.visible = false
	fish_reveal_start_position = fish_reveal.global_position
	fish_reveal_start_scale = fish_reveal.scale
	discovery_panel.visible = false
	discovery_panel.position.y = 1080  
	pole_rest_rotation = pole.rotation
	status_label.text = "Press Space to cast."
	inventory_panel.visible = false
	fish_preview_panel.visible = false
	load_song()
	##inventory_panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	inventory_rows.mouse_filter = Control.MOUSE_FILTER_IGNORE
	fish_preview_panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_texture.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_name_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_value_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_description.mouse_filter = Control.MOUSE_FILTER_IGNORE
	go_to_stall_button.pressed.connect(go_to_selling)

	
func toggle_inventory_panel() -> void:
	if state == State.WAITING or state == State.BITE:
		status_label.text = "Finish fishing first!"
		return
		
	var slide_in_out = create_tween().set_trans(Tween.TRANS_CUBIC)

	if not inventory_panel.visible:
		inventory_panel.visible = true
		
		slide_in_out.set_ease(Tween.EASE_OUT).tween_property(inventory_panel, "position:y", 0, 0.2)
		
		update_inventory_popup()
	else:
		slide_in_out.set_ease(Tween.EASE_IN).tween_property(inventory_panel, "position:y", 1080, 0.2)
		await slide_in_out.finished
		
		inventory_panel.visible = false

	
func _on_basket_click_area_input_event(_viewport, event, _shape_idx) -> void:
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
			
func _input(event) -> void:
	if inventory_open:
		return

	if event.is_action_pressed("fish"):
		if reward_animating:
			if discovery_skip_allowed:
				skip_reward_pause = true
			return

		match state:
			State.READY:
				cast_line()
			State.BITE:
				catch_fish()
			State.RESULT: 
				reset_cast()
				
#helper function for skippping animations
func wait_for_seconds_or_skip(seconds: float) -> void:
	skip_reward_pause = false

	var elapsed := 0.0

	while elapsed < seconds and not skip_reward_pause:
		await get_tree().process_frame
		elapsed += get_process_delta_time()

func cast_line() -> void:
	state = State.WAITING
	status_label.text = "Casting..."

	fish_reveal.visible = false

	bobber.visible = true
	bobber.global_position = bobber_start_position
	bobber.scale = Vector2(2.25, 2.25)
	
	play_cast_animation()

	var midpoint := (bobber_start_position + cast_position) / 2
	midpoint.y -= cast_arc_height

	var tween := create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_OUT)

	tween.tween_property(bobber, "global_position", midpoint, 0.25)
	tween.tween_property(bobber, "global_position", cast_position, 0.35)

	await tween.finished

	if inventory_open:
		return

	show_splash(bobber.global_position)

	bobber.scale = Vector2(2.25, 2.25)
	var land_tween := create_tween()
	land_tween.tween_property(bobber, "scale", Vector2(2.25, 2.25), 0.45)

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
	reward_animating = true
	skip_reward_pause = false
	discovery_skip_allowed = true

	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order.get("required_fish", "")

	var fish_name: String

	# Only boost the story fish when there actually is one
	# and the player does not already have it.
	var should_boost_story_fish: bool = (
		not required_fish.is_empty()
		and required_fish in fish_pool
		and GameState.get_fish_count(required_fish) <= 0
	)

	if should_boost_story_fish:
		# Guarantee the story fish after enough misses.
		if GameState.casts_without_story_fish >= 6:
			fish_name = required_fish
		else:
			var weighted_pool: Array[String] = []

			for possible_fish in fish_pool:
				var weight: int = 10

				if possible_fish == required_fish:
					weight += GameState.casts_without_story_fish * 5

				for i in range(weight):
					weighted_pool.append(possible_fish)

			fish_name = weighted_pool.pick_random()

		if fish_name == required_fish:
			GameState.casts_without_story_fish = 0
		else:
			GameState.casts_without_story_fish += 1
	else:
		fish_name = fish_pool.pick_random()
		GameState.casts_without_story_fish = 0

	caught_fish = GameState.get_fish_data(fish_name).duplicate()
	caught_fish["name"] = fish_name

	var is_new_fish: bool = not GameState.has_discovered_fish(fish_name)

	if is_new_fish:
		GameState.discover_fish(fish_name)

	status_label.text = "Caught " + fish_name + ", adding to inventory!"

	bobber.visible = false

	if is_new_fish:
		await show_new_fish_discovery(caught_fish)

		fish_reveal.texture = caught_fish["texture"]
		fish_reveal.global_position = fish_reveal_start_position
		fish_reveal.scale = fish_reveal_start_scale
		fish_reveal.modulate.a = 1.0
		fish_reveal.visible = true
	else:
		fish_reveal.texture = caught_fish["texture"]
		fish_reveal.global_position = fish_reveal_start_position
		fish_reveal.scale = fish_reveal_start_scale
		fish_reveal.modulate.a = 0.0
		fish_reveal.visible = true

		var reveal_tween := create_tween()
		reveal_tween.tween_property(
			fish_reveal,
			"modulate:a",
			1.0,
			0.4
		)

		await reveal_tween.finished
		await wait_for_seconds_or_skip(2.0)

	var fly_tween := create_tween()
	fly_tween.set_parallel(true)
	fly_tween.set_trans(Tween.TRANS_SINE)
	fly_tween.set_ease(Tween.EASE_IN_OUT)

	fly_tween.tween_property(
		fish_reveal,
		"global_position",
		basket.global_position,
		0.6
	)

	fly_tween.tween_property(
		fish_reveal,
		"scale",
		Vector2(0.2, 0.2),
		0.6
	)

	fly_tween.tween_property(
		fish_reveal,
		"modulate:a",
		0.0,
		0.6
	)

	await fly_tween.finished

	fish_reveal.visible = false
	add_fish_to_inventory(fish_name)

	state = State.READY
	bobber.visible = false
	fish_reveal.visible = false

	status_label.text = (
		"Added to the inventory! Press Space to cast again."
	)

	reward_animating = false
	skip_reward_pause = false
	discovery_skip_allowed = false     

func update_inventory_popup_label() -> void:
	update_inventory_popup()

func reset_cast() -> void:
	state = State.READY
	bobber.visible = false

	fish_reveal.visible = false
	fish_reveal.global_position = fish_reveal_start_position
	fish_reveal.scale = fish_reveal_start_scale
	fish_reveal.modulate.a = 1.0

	status_label.text = "Press Space to cast."

func go_to_selling() -> void:
	get_tree().change_scene_to_file("res://SellingScene.tscn")
