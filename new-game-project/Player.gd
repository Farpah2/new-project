extends CharacterBody2D

const GRAVITY = 500.0
const JUMP_POWER = -400
const WALK_SPEED = 200

func _physics_process(delta):
	velocity.y += delta * GRAVITY

	if Input.is_action_just_pressed("up") && is_on_floor():
		velocity.y = JUMP_POWER

	if Input.is_action_pressed("left"):
		velocity.x = -WALK_SPEED
	elif Input.is_action_pressed("right"):
		velocity.x =  WALK_SPEED
	else:
		velocity.x = 0

	# "move_and_slide" already takes delta time into account.
	move_and_slide()
