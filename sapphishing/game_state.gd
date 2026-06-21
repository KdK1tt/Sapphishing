extends Node

var fish_inventory := {}

var fish_database := {
	"Coffee Shop AU Fish": {
		"texture": preload("res://assets/fish/coffee_shop_au_fish.png"),
		"description": "Everybody loves a cute barista that remembers your order every time.",
		"tier": 2,
		"value": 18
	},
	"Flower Shop AU Fish": {
		"texture": preload("res://assets/fish/flower_shop_au_fish.png"),
		"description": "Everybody loves a cute florist that can yap your ear off about the meaning of begonias all day.",
		"tier": 1,
		"value": 10
	},
	"Friends to Lovers Fishes": {
		"texture": preload("res://assets/fish/friends_to_lovers_fishes.png"),
		"description": "You liked them before. Now you love them!",
		"tier": 3,
		"value": 30
	},
	"Hurt Comfort Fish": {
		"texture": preload("res://assets/fish/hurt_comfort_fish.png"),
		"description": "It's not serious or anything, but you could really use a hug and a cuddle from a pretty femme until you feel better. And you know what? You deserve it.",
		"tier": 2,
		"value": 20
	},
	"Meet Cute Seafood": {
		"texture": preload("res://assets/fish/meet_cute_seafood.png"),
		"description": "It can happen anywhere, when you least expect it. They'll meet you during a very gay time in your life.",
		"tier": 1,
		"value": 12
	},
	"Power Couple Fishes": {
		"texture": preload("res://assets/fish/power_couple_fishes.png"),
		"description": "Outstanding in your field. Even more outstanding together.",
		"tier": 3,
		"value": 35
	},
	"Secret Relationship Fish": {
		"texture": preload("res://assets/fish/secret_relationship_fish.png"),
		"description": "Yes, this is common for queer relationships anyway,\nbut imagine if you were dating a celebrity or someone in power\nand no one could know…",
		"tier": 1,
		"value": 14
	},
	"Situationship Fish": {
		"texture": preload("res://assets/fish/situationship_fish.png"),
		"description": "You're basically dating, but is that being clarified? No, of course not. It would ruin the ~magic~ of ambiguity.",
		"tier": 2,
		"value": 16
	},
	"Soulmates Fish": {
		"texture": preload("res://assets/fish/soulmates_fish.png"),
		"description": "You're tied to someone by the red string of fate. You'll know it when you find them.",
		"tier": 3,
		"value": 40
	},
}


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
