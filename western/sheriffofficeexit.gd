extends Area2D


var at_door = false

func _process(delta):
	if Input.is_action_pressed("ui_up") and at_door:
		get_tree().change_scene_to_file("res://town_outside.tscn")
		at_door = false


func _on_body_entered(_sheriffexit):
	at_door = true


func _on_body_exited(_sheriffexit):
	at_door = false
