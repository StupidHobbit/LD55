extends Node

const BALLOON = preload("res://scenes/dialogue/balloon.tscn")

func start_dialogue(dialogue: DialogueResource, title: String):
	State.character.stop_handle_input()
	var balloon: Node = BALLOON.instantiate()
	DialogueManager.show_dialogue_balloon_scene(balloon, dialogue, title)

func _ready():
	DialogueManager.dialogue_ended.connect(_stop_dialogue)

func _stop_dialogue(resource):
	State.character.start_handle_input()
