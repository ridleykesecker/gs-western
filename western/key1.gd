extends Area2D

func _on_body_entered(body):
	if body.name == "player":
		body.have_key_1 = true
		queue_free()
	
