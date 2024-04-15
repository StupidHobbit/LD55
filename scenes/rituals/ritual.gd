extends Dialogable

class_name Ritual

@export var slug: String
@export var demon_scene: PackedScene
@export var spawn_item: PackedScene

var demon: Node3D
@onready var spawn_point = $SpawnPoint


func start():
	demon = demon_scene.instantiate()
	self.enabled = false
	add_child(demon)
	impl_start(demon)
	
func finish():
	impl_finish(demon)
	await get_tree().create_timer(2).timeout
	
	if spawn_item != null:
		var item: Node3D = spawn_item.instantiate()
		get_parent().add_child(item)
		item.global_position = spawn_point.global_position
	
	queue_free()
	
func impl_start(demon: Node3D):
	pass
		
func impl_finish(demon: Node3D):
	pass

func _ready():
	State.add_ritual(self.slug, self)
