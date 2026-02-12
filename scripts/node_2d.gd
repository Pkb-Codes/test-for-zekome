extends Node2D

@onready var circle = $Circle

var rotating := false
var rotation_speed := 2.0  # radians per second

func _process(delta):
	if rotating:
		circle.rotation += rotation_speed * delta

func _input(event):
	if event.is_action_pressed("ui_accept"):
		rotating = !rotating
