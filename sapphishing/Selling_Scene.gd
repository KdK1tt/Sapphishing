extends Node2D

@onready var inventory_panel = $InventoryPanel
@onready var inventory_rows = $InventoryPanel/InventoryRows
@onready var basket_click_area = $background/BasketClickArea
@onready var fish_preview_panel = $InventoryPanel/FishPreview
@onready var preview_texture = $InventoryPanel/FishPreview/PreviewTexture
@onready var preview_name_label = $InventoryPanel/FishPreview/PreviewNameLabel
@onready var preview_value_label = $InventoryPanel/FishPreview/PreviewValueLabel
@onready var preview_description = $InventoryPanel/FishPreview/PreviewDescription
@onready var money_label = $MoneyLabel
@onready var dialogue_label = $DialoguePanel/DialogueLabel
@onready var back_to_fishing_button = $BackToFishing
@onready var shop_rows = $ShopPanel/ShopRows
@onready var shop_panel = $ShopPanel
@onready var tackle_box_click_area = $TackleBox/TackleBoxClickArea
@onready var talk_button = $TalkButton
@onready var customer_sprite = $CustomerSprite


var customer_waiting := false
var customer_arriving := false

func _ready() -> void:
	inventory_panel.visible = false
	fish_preview_panel.visible = false
	shop_panel.visible = false

	if not tackle_box_click_area.input_event.is_connected(_on_tackle_box_click_area_input_event):
		tackle_box_click_area.input_event.connect(_on_tackle_box_click_area_input_event)

	if not basket_click_area.input_event.is_connected(_on_basket_click_area_input_event):
		basket_click_area.input_event.connect(_on_basket_click_area_input_event)

	if not talk_button.pressed.is_connected(start_customer_dialogue):
		talk_button.pressed.connect(start_customer_dialogue)

	fish_preview_panel.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_texture.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_name_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_value_label.mouse_filter = Control.MOUSE_FILTER_IGNORE
	preview_description.mouse_filter = Control.MOUSE_FILTER_IGNORE

	dialogue_label.text = "Welcome! Click the basket to choose what to serve."

	if not back_to_fishing_button.pressed.is_connected(go_back_to_fishing):
		back_to_fishing_button.pressed.connect(go_back_to_fishing)

	update_money_label()
	update_shop_rows()

	talk_button.visible = false
	customer_sprite.visible = false

	check_for_customer()
	
func _on_tackle_box_click_area_input_event(_viewport, event, _shape_idx) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		toggle_shop_panel()
		
func _on_basket_click_area_input_event(_viewport, event, _shape_idx) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		print("Basket clicked!")
		toggle_inventory_panel()
		
func toggle_shop_panel() -> void:
	shop_panel.visible = not shop_panel.visible

	if shop_panel.visible:
		inventory_panel.visible = false
		fish_preview_panel.visible = false
		update_shop_rows()
		dialogue_label.text = "What would you like to buy?"
	else:
		dialogue_label.text = "Welcome! Click the basket to choose what to serve."

func update_money_label() -> void:
	money_label.text = "Money: $" + str(GameState.money)
	
		
func toggle_inventory_panel() -> void:
	inventory_panel.visible = not inventory_panel.visible

	if inventory_panel.visible:
		shop_panel.visible = false
		update_inventory_rows()
		dialogue_label.text = "Choose a fish to serve."
	else:
		fish_preview_panel.visible = false
		dialogue_label.text = "Welcome! Click the basket to choose what to serve."

func update_inventory_rows() -> void:
	for child in inventory_rows.get_children():
		child.queue_free()

	fish_preview_panel.visible = false

	if GameState.fish_inventory.is_empty():
		var empty_label := Label.new()
		empty_label.text = "No fish to sell. Time to go fishing!"
		empty_label.custom_minimum_size = Vector2(500, 32)
		inventory_rows.add_child(empty_label)
		return

	for fish_name in GameState.fish_inventory.keys():
		var count: int = GameState.fish_inventory[fish_name]
		var fish_data := GameState.get_fish_data(fish_name)
		var value: int = fish_data["value"]

		var row := Button.new()
		row.text = fish_name + " x" + str(count) + "  ($" + str(value) + ")"
		row.custom_minimum_size = Vector2(500, 36)
		row.mouse_filter = Control.MOUSE_FILTER_STOP

		row.mouse_entered.connect(func():
			show_fish_preview(fish_name)
		)

		row.pressed.connect(func():
			sell_selected_fish(fish_name)
		)

		inventory_rows.add_child(row)
		
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
	var required_fish: String = order["required_fish"]

	var value: int = GameState.sell_fish(fish_name)

	if value <= 0:
		dialogue_label.text = "Looks like we're out of " + fish_name + "!"
		return

	update_money_label()
	call_deferred("update_inventory_rows")

	# Correct story fish: continue Avery's story.
	if fish_name == required_fish:
		GameState.pending_dialogue_phase = "after"
		GameState.pending_return_scene = "res://SellingScene.tscn"

		get_tree().change_scene_to_file("res://DialogueScene.tscn")
		return

	# Wrong/non-story fish: still sell it, but do not advance story.
	dialogue_label.text = "Sold " + fish_name + " for $" + str(value) + ".\n\nAvery still needs: " + required_fish


func show_fish_preview(fish_name: String) -> void:
	var fish_data := GameState.get_fish_data(fish_name)

	preview_name_label.text = fish_name
	preview_value_label.text = "$" + str(fish_data["value"])
	preview_description.text = fish_data["description"]
	preview_texture.texture = fish_data["texture"]

	fish_preview_panel.visible = true
	

	
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

	var order: Dictionary = GameState.get_current_npc_order()
	var required_fish: String = order["required_fish"]

	if required_fish == "":
		dialogue_label.text = "No customer order found."
		return

	# If the customer has already talked, do not replay their intro.
	# Keep them present and wait for the player to serve the fish.
	if GameState.customer_has_talked:
		customer_sprite.visible = true
		customer_sprite.position = Vector2(1120, 560)
		customer_sprite.modulate.a = 1.0
		customer_waiting = false
		talk_button.visible = false
		dialogue_label.text = "Serve the requested fish from your basket: " + required_fish

		inventory_panel.visible = true
		shop_panel.visible = false
		update_inventory_rows()

		return

	# Customer only appears if you have the fish they need.
	if GameState.get_fish_count(required_fish) <= 0:
		dialogue_label.text = "No customers right now.\n\nTry fishing for: " + required_fish
		return

	dialogue_label.text = "Someone may stop by soon..."

	var delay := randf_range(1.0, 3.0)
	await get_tree().create_timer(delay).timeout

	if not is_inside_tree():
		return

	# Re-check after the delay.
	if GameState.customer_has_talked:
		customer_sprite.visible = true
		customer_sprite.position = Vector2(1120, 560)
		customer_sprite.modulate.a = 1.0
		talk_button.visible = false
		dialogue_label.text = "Serve the requested fish from your basket: " + required_fish

		inventory_panel.visible = true
		shop_panel.visible = false
		update_inventory_rows()

		return

	if GameState.get_fish_count(required_fish) <= 0:
		dialogue_label.text = "No customers right now.\n\nTry fishing for: " + required_fish
		return

	spawn_customer()

func spawn_customer() -> void:
	if customer_arriving or customer_waiting:
		return

	customer_arriving = true

	var order: Dictionary = GameState.get_current_npc_order()

	customer_sprite.visible = true
	customer_sprite.modulate.a = 0.0
	customer_sprite.z_index = 20
	talk_button.z_index = 80
	talk_button.position = customer_sprite.position + Vector2(10, -190)

	# Adjust these to your stall layout.
	customer_sprite.position = Vector2(1400, 560)
	var target_position := Vector2(900, 560)

	dialogue_label.text = order["intro"] if order.has("intro") else "A customer approaches..."

	var tween := create_tween()
	tween.set_parallel(true)
	tween.tween_property(customer_sprite, "position", target_position, 0.8)
	tween.tween_property(customer_sprite, "modulate:a", 1.0, 0.8)

	await tween.finished

	customer_arriving = false
	customer_waiting = true

	talk_button.visible = true
	talk_button.disabled = false
	talk_button.position = customer_sprite.position + Vector2(-40, -120)

	dialogue_label.text = "A customer is waiting. Click Talk."
	
func start_customer_dialogue() -> void:
	if not customer_waiting:
		return

	GameState.customer_has_talked = true
	GameState.pending_dialogue_phase = "before"
	GameState.pending_return_scene = "res://SellingScene.tscn"

	get_tree().change_scene_to_file("res://DialogueScene.tscn")
