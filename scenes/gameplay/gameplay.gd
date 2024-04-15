extends Node

var elapsed = 0

func pre_start(params):
	var cur_scene: Node = get_tree().current_scene

func start():
	Utils.start_dialogue(load('res://dialogues/main.dialogue'), 'start')


func _process(delta):
	pass
	
