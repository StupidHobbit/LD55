extends Interactable

@export var label: String
@export var slug: String

func get_label() -> String:
	return "Pick up %s" % label

func on_interact(character: Character):
	State.add_item(slug)
	queue_free()
