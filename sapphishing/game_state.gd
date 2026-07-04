extends Node

var fish_inventory := {}
var money := 0
var discovered_fish := {}

var npc_progress := {
	"Avery": 0,
	"Sophia": 0,
	"Asani": 0
}

var current_customer := "Avery"

var pending_dialogue_npc := ""
var pending_dialogue_phase := "" # "before" or "after"
var pending_return_scene := "res://SellingScene.tscn"

var customer_has_talked := false


func get_current_npc_order() -> Dictionary:


	if not StoryDat.npc_orders.has(current_customer):
		print("StoryDat has no entry for: ", current_customer)
		return {
			"required_fish": "",
			"before_transaction": [],
			"after_transaction": []
		}

	if not npc_progress.has(current_customer):
		print("npc_progress has no entry for: ", current_customer)
		npc_progress[current_customer] = 0

	var orders: Array = StoryDat.npc_orders[current_customer]
	var progress: int = npc_progress[current_customer]

	



	if progress >= orders.size():
		print("No more orders for ", current_customer)
		return {
			"required_fish": "",
			"before_transaction": [],
			"after_transaction": []
		}

	return orders[progress]


func complete_current_npc_order() -> void:
	npc_progress[current_customer] += 1
	
func get_current_npc_theme() -> String:
	if not StoryDat.npc_themes.has(current_customer):
		print("No theme found for: ", current_customer)
		return ""

	return StoryDat.npc_themes[current_customer]
	
func has_more_current_customer_orders() -> bool:
	if not StoryDat.npc_orders.has(current_customer):
		return false

	var orders: Array = StoryDat.npc_orders[current_customer]
	var progress: int = npc_progress[current_customer]

	return progress < orders.size()

var fish_database := {
"Flower Shop AU": {
	"texture": preload("res://assets/fish/flower_shop_au_fish.png"),
	"description": "Everybody loves a cute florist that can yap your ear off about the meaning of begonias all day.",
	"tier": 1,
	"value": 10
},
"Secret Relationship": {
	"texture": preload("res://assets/fish/secret_relationship_fish.png"),
	"description": "Yes, this is common for queer relationships anyway,\nbut imagine if you were dating a celebrity or someone in power\nand no one could know…",
	"tier": 1,
	"value": 10
},
"Meet Cute": {
	"texture": preload("res://assets/fish/meet_cute_seafood.png"),
	"description": "It can happen anywhere, when you least expect it. They'll meet you during a very gay time in your life.",
	"tier": 1,
	"value": 10
},
"Coffee Shop AU": {
	"texture": preload("res://assets/fish/coffee_shop_au_fish.png"),
	"description": "Everybody loves a cute barista that remembers your order every time.",
	"tier": 2,
	"value": 15
},
"Hurt Comfort": {
	"texture": preload("res://assets/fish/hurt_comfort_fish.png"),
	"description": "It's not serious or anything, but you could really use a hug and a cuddle from a pretty femme until you feel better. And you know what? You deserve it.",
	"tier": 2,
	"value": 15
},
"Situationship": {
	"texture": preload("res://assets/fish/situationship_fish.png"),
	"description": "You're basically dating, but is that being clarified? No, of course not. It would ruin the ~magic~ of ambiguity.",
	"tier": 2,
	"value": 15
},
"Soulmates": {
	"texture": preload("res://assets/fish/soulmates_fish.png"),
	"description": "You're tied to someone by the red string of fate. You'll know it when you find them.",
	"tier": 3,
	"value": 25
},
"Power Couple": {
	"texture": preload("res://assets/fish/power_couple_fishes.png"),
	"description": "Outstanding in your field. Even more outstanding together.",
	"tier": 3,
	"value": 25
},
"Friends to Lovers": {
	"texture": preload("res://assets/fish/friends_to_lovers_fishes.png"),
	"description": "You liked them before. Now you love them!",
	"tier": 3,
	"value": 25
},
}
func has_discovered_fish(fish_name: String) -> bool:
	return discovered_fish.has(fish_name)


func discover_fish(fish_name: String) -> void:
	discovered_fish[fish_name] = true
	
var upgrades := {
	"Better Bait": false,
	"Lucky Lure": false,
	"Cozy Stall Sign": false
}

var shop_items := {
	"Better Bait": {
		"price": 30,
		"description": "Improves your odds of catching Tier 2 fish."
	},
	"Lucky Lure": {
		"price": 60,
		"description": "Improves your odds of catching Tier 3 fish."
	},
	"Cozy Stall Sign": {
		"price": 25,
		"description": "Makes the stall feel more inviting. Mostly vibes. Important vibes."
	}
}

func buy_item(item_name: String) -> bool:
	if not shop_items.has(item_name):
		return false

	if upgrades.has(item_name) and upgrades[item_name]:
		return false

	var price: int = shop_items[item_name]["price"]

	if money < price:
		return false

	money -= price

	if upgrades.has(item_name):
		upgrades[item_name] = true

	return true

func sell_fish(fish_name: String) -> int:
	if not remove_fish(fish_name):
		return 0

	var value := get_fish_value(fish_name)
	money += value
	return value

func add_fish(fish_name: String) -> void:
	if not fish_inventory.has(fish_name):
		fish_inventory[fish_name] = 0

	fish_inventory[fish_name] += 1


func remove_fish(fish_name: String) -> bool:
	if not fish_inventory.has(fish_name):
		return false

	if fish_inventory[fish_name] <= 0:
		return false

	fish_inventory[fish_name] -= 1

	if fish_inventory[fish_name] <= 0:
		fish_inventory.erase(fish_name)

	return true


func get_fish_count(fish_name: String) -> int:
	if not fish_inventory.has(fish_name):
		return 0

	return fish_inventory[fish_name]


func get_fish_data(fish_name: String) -> Dictionary:
	if fish_database.has(fish_name):
		return fish_database[fish_name]

	return {
		"texture": null,
		"description": "A mysterious fish.",
		"tier": 1,
		"value": 1
	}


func get_fish_value(fish_name: String) -> int:
	return get_fish_data(fish_name)["value"]


func get_inventory_text() -> String:
	if fish_inventory.is_empty():
		return "Fish basket is empty."

	var lines := ["Fish Basket"]

	for fish_name in fish_inventory.keys():
		var count: int = fish_inventory[fish_name]
		var value: int = get_fish_value(fish_name)

		lines.append(fish_name + ": " + str(count) + "  ($" + str(value) + " each)")

	return "\n".join(lines)
