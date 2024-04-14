extends Interactable

class_name Dialogable

@export var title: String
@export var dialogue: DialogueResource
@export var dialogue_title: String
@export var prefix: String = 'Talk to '

func _ready():
	pass

func get_label() -> String:
	return prefix + title

func on_interact(character: Character):
	Utils.start_dialogue(dialogue, dialogue_title)
