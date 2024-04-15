extends Interactable

class_name Dialogable

@export var title: String
@export var dialogue: DialogueResource
@export var dialogue_title: String
@export var prefix: String = 'Talk to '
@export var audio: AudioStream

var player: AudioStreamPlayer

func _ready():
	if audio != null:
		var p = AudioStreamPlayer.new()
		p.stream = audio
		add_child(p)
		player = p

func get_label() -> String:
	return prefix + title

func on_interact(character: Character):
	Utils.start_dialogue(dialogue, dialogue_title)
	if player != null:
		player.play()
