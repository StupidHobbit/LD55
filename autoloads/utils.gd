extends Node

const BALLOON = preload("res://scenes/dialogue/balloon.tscn")

func start_dialogue(dialogue: DialogueResource, title: String):
	var balloon: Node = BALLOON.instantiate()
	DialogueManager.show_dialogue_balloon_scene(balloon, dialogue, title)
