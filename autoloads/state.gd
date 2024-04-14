extends Node

var items: Dictionary

func add_item(name: String):
	items[name] = 1


func has_item(name: String) -> bool:
	return items.get(name) == 1
