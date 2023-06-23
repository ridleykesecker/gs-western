extends Area2D

@onready var world = get_parent()
var at_door = false

func _physics_process(delta):
	if Input.is_action_pressed("ui_up") and at_door and world.have_key_2:
		get_tree().change_scene_to_file("res://bank_inside.tscn")
		at_door = false

func _on_body_entered(body):
	at_door = true

func _on_body_exited(body):
	at_door = false

