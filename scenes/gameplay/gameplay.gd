extends Node

var elapsed = 0
const BALLOON = preload("res://scenes/dialogue/balloon.tscn")

# `pre_start()` is called when a scene is loaded.
# Use this function to receive params from `Game.change_scene(params)`.
func pre_start(params):
	var cur_scene: Node = get_tree().current_scene
	print("Scene loaded: ", cur_scene.name, " (", cur_scene.scene_file_path, ")")
	if params:
		for key in params:
			var val = params[key]
			printt("", key, val)

# `start()` is called after pre_start and after the graphic transition ends.
func start():
	var balloon: Node = BALLOON.instantiate()
	DialogueManager.show_dialogue_balloon_scene(balloon, load('res://dialogues/main.dialogue'), 'start')


func _process(delta):
	pass
	
