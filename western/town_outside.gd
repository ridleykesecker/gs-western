extends Node2D

var have_key_1 = false
var have_key_2  = false

@onready var key_one = $key1
@onready var key_two = $key2

func _process(delta):
	if key_one == null:
		have_key_1 = true
	if key_two == null:
		have_key_2 = true
	
