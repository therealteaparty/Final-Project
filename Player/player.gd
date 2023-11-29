extends CharacterBody2D

func _physics_process(_delta):
	if Input.is_action_just_pressed("left") and position.x != 140:
		position.x -= 185
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("right") and position.x != 695:
		position.x += 185
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("up") and position.y != 150:
		position.y -= 175
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("down") and position.y != 500:
		position.y += 175
		#print(position.x, " ", position.y)

#BELOW IS THE PHYSICS FOR A NORMAL PLATFORMER ------------------------------------------------------
	
#const SPEED = 300.0
#const JUMP_VELOCITY = -400.0
#
## Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#
#
#func _physics_process(delta):
#	# Add the gravity.
#	if not is_on_floor():
#		velocity.y += gravity * delta
#
#	# Handle Jump.
#	if Input.is_action_just_pressed("jump") and is_on_floor():
#		velocity.y = JUMP_VELOCITY
#
#	# Get the input direction and handle the movement/deceleration.
#	# As good practice, you should replace UI actions with custom gameplay actions.
#	var direction = Input.get_axis("left", "right")
#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#
#	move_and_slide()
