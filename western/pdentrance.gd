extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	if body.name == "player":
		if Input.is_action_pressed("ui_up"):
			get_tree().change_scene_to_file("res://sheriffs_office_inside.tscn")
	





func _on_child_entered_tree(node):
	pass # Replace with function body.
