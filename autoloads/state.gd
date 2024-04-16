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

func finish_ritual(name: String):
	rituals[name].finish()

func end_game():
	_end_game.call_deferred()

func _end_game():
	await get_tree().create_timer(1).timeout
	Utils.start_dialogue(preload("res://dialogues/end.dialogue"), 'start')

func go_to_menu():
	Game.change_scene_to_file("res://scenes/menu/menu.tscn", {"show_progress_bar": false})
