extends Area2D

var at_door = false

func _physics_process(delta):
	if Input.is_action_pressed("ui_up") and at_door:
		get_tree().change_scene_to_file("res://town_outside.tscn")
		at_door = false


func _on_exit_body_entered(body):
	at_door = true


func _on_exit_body_exited(body):
	at_door = false
	
