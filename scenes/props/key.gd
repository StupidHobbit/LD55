extends Interactable

@export var label: String
@export var slug: String
@export var audio: AudioStream

var player: AudioStreamPlayer

func _ready():
	var p = AudioStreamPlayer.new()
	if audio != null:
		p.stream = audio
	else:
		p.stream = preload("res://assets/sounds/PickUp.wav")
	player = p
	get_parent().add_child.call_deferred(p)

func get_label() -> String:
	return "Pick up %s" % label

func on_interact(character: Character):
	if player != null:
		player.play()
		player.finished.connect(player.queue_free)
	State.add_item(slug)
	queue_free()
