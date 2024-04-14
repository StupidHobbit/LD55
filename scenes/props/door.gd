extends Interactable

@export var is_locked: bool = false
@export var key_name: String = 'none'
@export var animation_duration: float = 0.5

var is_opened: bool = false

const CLOSED = preload("res://dialogues/closed.dialogue")

func get_label() -> String:
	return ('Close' if is_opened else 'Open') + ' the door'

func on_interact(character: Character):
	if is_locked:
		if State.has_item(key_name):
			is_locked = false
		else:
			Utils.start_dialogue(CLOSED, 'start')
			return

	is_opened = not is_opened

	var rotation_target = PI / 2 if is_opened else 0
	
	var tween = get_tree().create_tween()
	tween.tween_property(
		$door,
		'rotation:y', 
		rotation_target, 
		animation_duration,
	)


func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
