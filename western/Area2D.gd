extends Area2D

var at_door = false

func _process(_delta):
	if Input.is_action_pressed("ui_up") and at_door:
		get_tree().change_scene_to_file("res://sheriffs_office_inside.tscn")
		at_door = false


func _on_body_entered(body):
	at_door = true

func _on_body_exited(body):
	at_door = false
