extends Dialogable

class_name Ritual

@export var slug: String
@export var demon_scene: PackedScene

func start():
	var demon = demon_scene.instantiate()
	self.enabled = false
	add_child(demon)
	impl(demon)
	
func impl(demon: Node3D):
	pass

func _ready():
	State.add_ritual(self.slug, self)
