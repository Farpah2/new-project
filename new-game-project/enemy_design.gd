extends RigidBody2D

@export var speed: float = 300.0
@onready var target = get_node_or_null("../Player")
@onready var animation = $AnimatedSprite2D

func _ready():
	animation.play("fly")  # Keep flying animation active

func _physics_process(delta):
	if target:
		var direction = (target.position - position).normalized()
		apply_force(direction * speed)  # Move toward the player

func _on_body_entered(body):
	if body.name == "Player":  # Check if the enemy collided with the player
		print("Enemy hit the Player!")  # Replace with actual damage logic
