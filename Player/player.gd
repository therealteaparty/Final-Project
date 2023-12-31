extends CharacterBody2D


func _physics_process(_delta):
	if Input.is_action_just_pressed("left") and position.x != 140:
		position.x -= 185
		$AnimatedSprite2D.play("Left")
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("right") and position.x != 695:
		position.x += 185
		$AnimatedSprite2D.play("Right")
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("up") and position.y != 150:
		position.y -= 175
		$AnimatedSprite2D.play("Up")
		$Squish.play()
		#print(position.x, " ", position.y)
	if Input.is_action_just_pressed("down") and position.y != 500:
		position.y += 175
		$AnimatedSprite2D.play("Down")
		$Squish.play()
		
		#print(position.x, " ", position.y)

func _on_candy_collector_body_entered(body):
	if body.name == "Candies":
		body.get_coins(global_position)

func _on_animated_sprite_2d_animation_finished():
	$AnimatedSprite2D.play("Idle")
