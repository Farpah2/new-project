extends CharacterBody2D

@export var speed: float = 200.0  # Adjust speed as needed
@onready var target = get_node_or_null("../Player")

func _process(delta):
	if target:
		var direction = (target.position - position).normalized()
		velocity = direction * speed
		look_at(target.position)
		move_and_slide()


	
	
	
