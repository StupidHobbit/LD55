extends Node

var items: Dictionary
var rituals: Dictionary
var character: Character

func add_item(name: String):
	items[name] = 1


func has_item(name: String) -> bool:
	return items.get(name) == 1

func add_ritual(name: String, ritual):
	rituals[name] = ritual

func start_ritual(name: String):
	rituals[name].start()
