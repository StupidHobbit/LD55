extends Interactable

@export var title: String
@export var dialogue: DialogueResource
@export var dialogue_title: String
@export var prefix: String = 'Talk to '

const BALLOON = preload("res://scenes/dialogue/balloon.tscn")

func _ready():
	pass

func get_label() -> String:
	return prefix + title

func on_interact(character: Character):
	var balloon: Node = BALLOON.instantiate()
	DialogueManager.show_dialogue_balloon_scene(balloon, dialogue, dialogue_title)
