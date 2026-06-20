extends Node

var fish_inventory := {}

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


func get_inventory_text() -> String:
	if fish_inventory.is_empty():
		return "Fish basket is empty."

	var lines := ["Fish Basket"]

	for fish_name in fish_inventory.keys():
		lines.append(fish_name + ": " + str(fish_inventory[fish_name]))

	return "\n".join(lines)
