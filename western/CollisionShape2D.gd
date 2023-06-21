extends CollisionShape2D

			
func _on_child_entered_tree(node):
	pass # Replace with function body.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		get_tree().change_scene_to_file("res://sheriffs_office_inside.tscn")


