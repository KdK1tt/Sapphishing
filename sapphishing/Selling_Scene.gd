extends Node2D

@onready var inventory_panel = $InventoryPanel
@onready var inventory_rows = $InventoryPanel/InventoryRows
@onready var basket_click_area = $BasketClickArea
@onready var fish_preview_panel = $InventoryPanel/FishPreview
@onready var preview_texture = $InventoryPanel/FishPreview/PreviewTexture
@onready var preview_name_label = $InventoryPanel/FishPreview/PreviewDescriptionBackground/PreviewNameLabel
@onready var preview_value_label = $InventoryPanel/FishPreview/PreviewValueLabel
@onready var preview_description = $InventoryPanel/FishPreview/PreviewDescriptionBackground/PreviewDescription
@onready var money_label = $InventoryPanel/MoneyIcon/MoneyLabel
@onready var dialogue_label = $DefaultView/DialoguePanel/DialogueLabel
@onready var back_to_fishing_button = $DefaultView/BackToFishing
@onready var shop_rows = $ShopPanel/ShopRows
@onready var shop_panel = $ShopPanel
@onready var tackle_box_click_area = $TackleBox/TackleBoxClickArea
@onready var talk_button = $DefaultView/TalkButton
@onready var customer_sprite = $DefaultView/TalkButton/CustomerSprite
@onready var default_view = $DefaultView
@onready var click_here_arrow = $DefaultView/InventoryClickHereArrow
@onready var sell_button = $DefaultView/TalkButton
@onready var fish_count = $InventoryPanel/FishPreview/PreviewDescriptionBackground/PreviewCountLabel
@onready var talk_label_1 = $DefaultView/TalkButton/TalkLabel1
@onready var talk_label_2 = $DefaultView/TalkButton/TalkLabel2



var customer_waiting := false
var customer_arriving := false
var selected_fish_name: String = ""
var selected_inventory_row: Button = null

func _ready() -> void:
	inventory_panel.visible = false
	fish_preview_panel.visible = false
	shop_panel.visible = false
	fish_preview_panel.visible = false
	sell_button.disabled = true

	inventory_panel.position.y = 1080

	var bob = create_tween().set_loops().set_ease(Tween.EASE_IN_OUT).set_trans(Tween.TRANS_SINE)
	bob.tween_property(click_here_arrow, "position:y", 515, 1.0)
	bob.tween_property(click_here_arrow, "position:y", 535, 1.0)

	if not tackle_box_click_area.input_event.is_connected(_on_tackle_box_click_area_input_event):
		tackle_box_click_area.input_event.connect(_on_tackle_box_click_area_input_event)

	if not basket_click_area.input_event.is_connected(_on_basket_click_area_input_event):
		basket_click_area.input_event.connect(_on_basket_click_area_input_event)

	if not talk_button.pressed.is_connected(start_customer_dialogue):
		talk_button.pressed.connect(start_customer_dialogue)


	sell_button.mouse_filter = Control.MOUSE_FILTER_STOP
	preview_texture.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_name_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_value_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_description.mouse_filter = Control.MOUSE_FILTER_IGNORE
	talk_label_1.mouse_filter = Control.MOUSE_FILTER_IGNORE
	talk_label_2.mouse_filter = Control.MOUSE_FILTER_IGNORE

	dialogue_label.text = "Welcome! Click the basket to choose what to serve."

	if not back_to_fishing_button.pressed.is_connected(go_back_to_fishing):
		back_to_fishing_button.pressed.connect(go_back_to_fishing)

	update_money_label()
	update_shop_rows()

	talk_button.visible = false
	customer_sprite.visible = false

	check_for_customer()
	load_song()
	
func load_song() -> void:
	if GameState.force_npc_music:
		MusicManager.play_song(GameState.get_current_npc_theme())
	else:
		MusicManager.play_song("res://shopping_wip03.mp3")
	
func _on_tackle_box_click_area_input_event(_viewport, event, _shape_idx) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_shop_panel()
		
func _on_basket_click_area_input_event(_viewport, event, _shape_idx) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Basket clicked!")
		click_here_arrow.hide()
		toggle_inventory_panel()
		
func _on_inventory_close_button_pressed() -> void:
		toggle_inventory_panel()
		
func update_default_dialogue_text() -> void:
	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order.get("required_fish", "")

	if GameState.customer_has_talked:
		dialogue_label.text = "Serve the requested fish from your basket: " + required_fish
	elif required_fish != "":
		if GameState.get_fish_count(required_fish) <= 0:
			dialogue_label.text = "You sell a few fish to passing customers.\n\nStill, you get the sense that someone is looking for: " + required_fish
		else:
			dialogue_label.text = "The air around the stall feels expectant..."
	else:
		dialogue_label.text = "The stall is open."
		
func toggle_shop_panel() -> void:
	shop_panel.visible = not shop_panel.visible

	if shop_panel.visible:
		inventory_panel.visible = false
		fish_preview_panel.visible = false
		update_shop_rows()
		dialogue_label.text = "What would you like to buy?"
	else:
		update_default_dialogue_text()              

func update_money_label() -> void:
	money_label.text = str(GameState.money)
	
		
func toggle_inventory_panel() -> void:
	var slide_in_out = create_tween().set_trans(Tween.TRANS_CUBIC)

	if not inventory_panel.visible:
		update_inventory_rows()
		inventory_panel.visible = true
		
		slide_in_out.set_ease(Tween.EASE_OUT)
		slide_in_out.tween_property(inventory_panel, "position:y", 0, 0.2)
		
		default_view.visible = false
		shop_panel.visible = false
		dialogue_label.text = "Choose a fish to serve."
	else:
		default_view.visible = true
		
		slide_in_out.set_ease(Tween.EASE_IN)
		slide_in_out.tween_property(inventory_panel, "position:y", 1080, 0.2)
		await slide_in_out.finished
		
		inventory_panel.visible = false
		fish_preview_panel.visible = false
		
		update_default_dialogue_text()

func update_inventory_rows() -> void:
	selected_fish_name = ""
	selected_inventory_row = null
	selected_fish_name = ""
	fish_preview_panel.visible = false
	sell_button.disabled = true

	for child in inventory_rows.get_children():
		child.queue_free()

	if GameState.fish_inventory.is_empty():
		var empty_label := Label.new()
		empty_label.text = "No fish to sell.\n Time to go fishing!"
		empty_label.custom_minimum_size = Vector2(500, 32)
		inventory_rows.add_child(empty_label)
		empty_label.add_theme_color_override("font_color", Color.BLACK)
		return

	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order.get("required_fish", "")
	var story_sell_mode: bool = GameState.customer_has_talked
	var customer_waiting_mode: bool = customer_waiting

	for fish_name in GameState.fish_inventory.keys():
		var count: int = GameState.fish_inventory[fish_name]
		var fish_data := GameState.get_fish_data(fish_name)
		var value: int = fish_data["value"]

		var row := Button.new()
		row.custom_minimum_size = Vector2(500, 36)
		row.toggle_mode = true
		row.focus_mode = Control.FOCUS_ALL
		row.alignment = HORIZONTAL_ALIGNMENT_LEFT

		apply_inventory_row_style(row)

		if story_sell_mode:
			if fish_name == required_fish:
				row.text = make_inventory_row_text(
					row,
					"★ " + fish_name,
					value
					)
				row.disabled = false
				fish_count.text = "x" + str(count)
			else:
				row.text = make_inventory_row_text(
					row,
					"- " + fish_name,
					value
					)
				row.disabled = true

		elif customer_waiting_mode:
			if fish_name == required_fish:
				row.text = make_inventory_row_text(
				row,
				"- ! " + fish_name,
				value
				)
				fish_count.text = "x" + str(count)
			else:
				row.text = make_inventory_row_text(row, fish_name, value)
				fish_count.text = "x" + str(count)

			row.disabled = true

		else:
			row.text = make_inventory_row_text(row, fish_name, value)
			row.disabled = false
			fish_count.text = "x" + str(count)  

		if not row.disabled:
			row.pressed.connect(
				func() -> void:
					select_inventory_row(fish_name, row)
			)

		inventory_rows.add_child(row)
		
		
		
		
func select_inventory_row(fish_name: String, row: Button) -> void:
	if selected_inventory_row != null and selected_inventory_row != row:
		selected_inventory_row.button_pressed = false

	selected_fish_name = fish_name
	selected_inventory_row = row
	row.button_pressed = true

	show_fish_preview(fish_name)
	sell_button.disabled = false
	
func apply_inventory_row_style(row: Button) -> void:
	var normal_style := StyleBoxEmpty.new()

	var hover_style := StyleBoxFlat.new()
	hover_style.bg_color = Color(1.0, 1.0, 1.0, 0.10)
	hover_style.corner_radius_top_left = 4
	hover_style.corner_radius_top_right = 4
	hover_style.corner_radius_bottom_left = 4
	hover_style.corner_radius_bottom_right = 4

	var selected_style := StyleBoxFlat.new()
	selected_style.bg_color = Color(1.0, 1.0, 1.0, 0.20)
	selected_style.corner_radius_top_left = 4
	selected_style.corner_radius_top_right = 4
	selected_style.corner_radius_bottom_left = 4
	selected_style.corner_radius_bottom_right = 4

	var focus_style := StyleBoxFlat.new()
	focus_style.bg_color = Color(1.0, 1.0, 1.0, 0.08)
	focus_style.border_width_left = 2
	focus_style.border_width_right = 2
	focus_style.border_width_top = 2
	focus_style.border_width_bottom = 2
	focus_style.border_color = Color(1.0, 1.0, 1.0, 0.4)

	row.add_theme_stylebox_override("normal", normal_style)
	row.add_theme_stylebox_override("hover", hover_style)
	row.add_theme_stylebox_override("pressed", selected_style)
	row.add_theme_stylebox_override("hover_pressed", selected_style)
	row.add_theme_stylebox_override("focus", focus_style)
	row.add_theme_color_override("font_color", Color.BLACK)
	row.add_theme_color_override("font_hover_color", Color.BLACK)
	row.add_theme_color_override("font_pressed_color", Color.BLACK)
	row.add_theme_color_override("font_focus_color", Color.BLACK)
	row.add_theme_color_override("font_disabled_color", Color(0.4, 0.4, 0.4))
	row.add_theme_color_override("font_hover_pressed_color", Color.BLACK)


		
func update_shop_rows() -> void:
	for child in shop_rows.get_children():
		child.queue_free()

	for item_name in GameState.shop_items.keys():
		var item_data: Dictionary = GameState.shop_items[item_name]
		var price: int = item_data["price"]

		var row := Button.new()

		if GameState.upgrades.has(item_name) and GameState.upgrades[item_name]:
			row.text = item_name + " - Bought"
			row.disabled = true
		else:
			row.text = "Buy " + item_name + " ($" + str(price) + ")"

		row.custom_minimum_size = Vector2(420, 36)

		row.pressed.connect(func():
			buy_shop_item(item_name)
		)

		shop_rows.add_child(row)

func make_inventory_row_text(
	row: Button,
	left_text: String,
	value: int
) -> String:
	var price_text: String = "$" + str(value)

	var font: Font = row.get_theme_font("font")
	var font_size: int = row.get_theme_font_size("font_size")

	var target_width: float = 200.0

	var left_width: float = font.get_string_size(
		left_text,
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		font_size
	).x

	var price_width: float = font.get_string_size(
		price_text,
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		font_size
	).x

	var space_width: float = font.get_string_size(
		" ",
		HORIZONTAL_ALIGNMENT_LEFT,
		-1,
		font_size
	).x

	var remaining_width: float = target_width - left_width - price_width
	var spaces_needed: int = maxi(
		1,
		int(remaining_width / space_width)
	)

	return left_text + " ".repeat(spaces_needed) + price_text

func buy_shop_item(item_name: String) -> void:
	var item_data: Dictionary = GameState.shop_items[item_name]
	var price: int = item_data["price"]

	var bought: bool = GameState.buy_item(item_name)

	if not bought:
		dialogue_label.text = "You need $" + str(price) + " for " + item_name + "."
		return

	dialogue_label.text = "Bought " + item_name + "!"

	update_money_label()
	call_deferred("update_shop_rows")
	


func sell_selected_fish(fish_name: String) -> void:
	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order.get("required_fish", "")
	var story_sell_mode: bool = GameState.customer_has_talked

	if GameState.get_fish_count(fish_name) <= 0:
		dialogue_label.text = "You do not have " + fish_name + " right now."
		update_inventory_rows()
		return

	if story_sell_mode and fish_name != required_fish:
		dialogue_label.text = "This customer is looking for: " + required_fish
		update_inventory_rows()
		return

	var value: int = GameState.sell_fish(fish_name)

	if value <= 0:
		dialogue_label.text = "Looks like we're out of " + fish_name + "!"
		update_inventory_rows()
		return

	update_money_label()
	call_deferred("update_inventory_rows")

	if story_sell_mode and fish_name == required_fish:
		GameState.in_story_sale = true
		GameState.hide_back_to_fishing_button = true
		GameState.force_npc_music = true
		GameState.pending_dialogue_phase = "after"
		GameState.pending_return_scene = "res://SellingScene.tscn"
		get_tree().change_scene_to_file("res://DialogueScene.tscn")
		return

	dialogue_label.text = "Sold " + fish_name + " for $" + str(value) + "."


func show_fish_preview(fish_name: String) -> void:
	var fish_data := GameState.get_fish_data(fish_name)

	preview_name_label.text = fish_name
	preview_value_label.text = "$" + str(fish_data["value"])
	preview_description.text = fish_data["description"]
	preview_texture.texture = fish_data["texture"]

	fish_preview_panel.visible = true
	
func _on_sell_button_pressed() -> void:

	if selected_fish_name.is_empty():
		return

	sell_selected_fish(selected_fish_name)
	
func go_back_to_fishing() -> void:
	get_tree().change_scene_to_file("res://FishingScene.tscn")
	
func check_for_customer() -> void:
	customer_waiting = false
	customer_arriving = false
	talk_button.visible = false
	customer_sprite.visible = false

	if GameState.current_customer == "None":
		dialogue_label.text = "No more customers for now. Great work, fish lady."
		return
	elif GameState.current_customer == "Avery":
		talk_label_1.add_theme_color_override("font_color", Color(0.299, 0.678, 1.0, 1.0))
		customer_sprite.texture = preload("res://assets/ui/scene_selling/icons/story_prompt-purple-blue.png")
	elif GameState.current_customer == "Sophia":
		talk_label_1.add_theme_color_override("font_color", Color(0.95, 0.199, 0.4, 1.0))
		customer_sprite.texture = preload("res://assets/ui/scene_selling/icons/story_prompt-red-purple.png")
	else:
		talk_label_1.add_theme_color_override("font_color", Color(0.0, 0.82, 0.6, 1.0))
		customer_sprite.texture = preload("res://assets/ui/scene_selling/icons/story_prompt-blue-green.png")

	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order["required_fish"]

	if required_fish == "":
		dialogue_label.text = "No customer order found."
		return

	# MID-SCENE STORY SERVING MODE
	if GameState.customer_has_talked:
		customer_sprite.visible = true
		customer_sprite.position = Vector2(1120, 720)
		customer_sprite.modulate.a = 1.0
		customer_waiting = false
		talk_button.visible = false

		if GameState.get_fish_count(required_fish) <= 0:
			GameState.in_story_sale = true
			GameState.hide_back_to_fishing_button = false
			GameState.force_npc_music = true
			GameState.customer_has_talked = true  

			dialogue_label.text = "Oh no! You need " + required_fish + "!\n\nYou tell them to hang on just a sec while you go fishing."
			inventory_panel.visible = false
			shop_panel.visible = false
			back_to_fishing_button.visible = true
			return
			
		else:
			GameState.in_story_sale = true
			GameState.hide_back_to_fishing_button = true
			GameState.force_npc_music = true
			dialogue_label.text = "Serve the requested fish from your basket: " + required_fish
			inventory_panel.visible = true
			shop_panel.visible = false
			back_to_fishing_button.visible = false
			update_inventory_rows()

		return

	# PUBLIC / PRE-STORY MODE
	if GameState.get_fish_count(required_fish) <= 0:
		dialogue_label.text = "You start selling fish.\n \nBut, you get the sense that someone is looking for: " + required_fish
		return

	dialogue_label.text = "Someone may stop by soon..."

	var delay := randf_range(1.0, 3.0)
	await get_tree().create_timer(delay).timeout

	if not is_inside_tree():
		return

	# Re-check after the delay.
	if GameState.customer_has_talked:
		customer_sprite.visible = true
		customer_sprite.position = Vector2(1120, 375)
		customer_sprite.modulate.a = 1.0
		talk_button.visible = false

		if GameState.get_fish_count(required_fish) <= 0:
			dialogue_label.text = "Oh no! You need " + required_fish + "!\n\nYou tell them to hang on just a sec while you go fishing."
			inventory_panel.visible = false
			shop_panel.visible = false
			return

		dialogue_label.text = "Serve the requested fish from your basket: " + required_fish
		inventory_panel.visible = true
		shop_panel.visible = false
		update_inventory_rows()
		return
		
	if GameState.get_fish_count(required_fish) <= 0:
		dialogue_label.text = "You sell a few fish to passing customers.\n\nStill, you get the sense that someone is looking for: " + required_fish
		return

	spawn_customer()

func spawn_customer() -> void:
	if customer_arriving or customer_waiting:
		return

	customer_arriving = true

	var order: Dictionary = GameState.get_current_npc_order()

	talk_button.visible = true
	talk_button.disabled = true
	talk_button.z_index = 80
	talk_button.position = Vector2(1400, 375)

	customer_sprite.visible = true
	customer_sprite.modulate.a = 0.0             

	var target_position := Vector2(900, 375)

	dialogue_label.text = (
		order["intro"]
		if order.has("intro")
		else "A customer approaches..."
	)

	var tween := create_tween()
	tween.set_parallel(true)
	tween.tween_property(talk_button, "position", target_position, 0.8)
	tween.tween_property(customer_sprite, "modulate:a", 1.0, 0.8)

	await tween.finished

	customer_arriving = false
	customer_waiting = true

	talk_button.disabled = false
	talk_label_1.visible = true
	talk_label_1.modulate.a = 1.0

	dialogue_label.text = "A customer is waiting. Click Talk."
	
func start_customer_dialogue() -> void:
	if not customer_waiting:
		return

	GameState.customer_has_talked = true
	GameState.pending_dialogue_phase = "before"
	GameState.pending_return_scene = "res://SellingScene.tscn"

	get_tree().change_scene_to_file("res://DialogueScene.tscn")
