extends CharacterBody2D

@export var speed: float = 300.0

func _physics_process(_delta: float):
	# Initialize a direction vector
	var direction = Vector2.ZERO
	
	# Check for vertical inputs
	if Input.is_action_pressed("ui_up"):
		direction.y = -1
	elif Input.is_action_pressed("ui_down"):
		direction.y = 1
		
	# Apply velocity
	velocity = direction * speed
	
	# move_and_slide handles the physics and collisions automatically
	move_and_slide()
	
	
