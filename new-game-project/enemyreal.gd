extends CharacterBody2D

@export var speed: float = 150.0  # Speed of the enemy
@onready var target = get_node_or_null("../Player")  # Locate the player

func _process(delta):
	if target:
		var direction = (target.position - position).normalized()
		velocity = direction * speed
		look_at(target.position)  # Enemy faces the player
		move_and_slide()  # Moves the enemy while handling collisions
	else:
		print("Player not found!")  # Debug message
