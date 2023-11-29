extends Node2D

@onready var player = get_node_or_null("/root/Level/Player")

#MIGHT NOT NEED THIS/NOT USING IT RN
#var A1 = get_node_or_null("Level/A1")
#var A2 = get_node_or_null("Level/A2")
#var A3 = get_node_or_null("Level/A3")
#var A4 = get_node_or_null("Level/A4")
#
#var B1 = get_node_or_null("Level/B1")
#var B2 = get_node_or_null("Level/B2")
#var B3 = get_node_or_null("Level/B3")
#var B4 = get_node_or_null("Level/B4")

#var C1 = get_node_or_null("Level/C1")
#var C2 = get_node_or_null("Level/C2")
#var C3 = get_node_or_null("Level/C3")
#var C4 = get_node_or_null("Level/C4")

var spaces = {
	"A1":0, "A2":0, "A3":0, "A4":0,
	"B1":0, "B2":0, "B3":0, "B4":0,
	"C1":0, "C2":0, "C3":0, "C4":0
}

var choices = [
	"A1", "A2", "A3", "A4",
	"B1", "B2", "B3", "B4",
	"C1", "C2", "C3", "C4"
]
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Countdown.start()
	$Chosen_Space.start()

#MIGHT NOT NEED THIS/NOT USING IT RN
func _process(_delta):
	if spaces["A1"] == 1:
		$KeyA1.play()
	if spaces["A2"] == 1:
		$KeyA2.play()
	if spaces["A3"] == 1:
		$KeyA3.play()
	if spaces["A4"] == 1:
		$KeyA4.play()
		
	if spaces["B1"] == 1:
		$KeyB1.play()
	if spaces["B2"] == 1:
		$KeyB2.play()
	if spaces["B3"] == 1:
		$KeyB3.play()
	if spaces["B4"] == 1:
		$KeyB4.play()
		
	if spaces["C1"] == 1:
		$KeyC1.play()
	if spaces["C2"] == 1:
		$KeyC2.play()
	if spaces["C3"] == 1:
		$KeyC3.play()
	if spaces["C4"] == 1:
		$KeyC4.play()

		
func random_choice(list):
	var choice_index = randi() % len(list)
	var chosen = list[choice_index]
	return chosen

func _on_chosen_space_timeout():
	var chosen = random_choice(choices)
	spaces[chosen] = 1
	await get_tree().create_timer(1).timeout
	spaces[chosen] = 0
	$Chosen_Space.start()
	
	
func _on_countdown_timeout():
	get_tree().change_scene_to_file("res://UI/end.tscn")

#-------------------------------------------------------------------------------

func _on_key_a_1_animation_finished():
	$SpaceA1.play()
	if player.position == Vector2(140,150):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_a_2_animation_finished():
	$SpaceA2.play()
	if player.position == Vector2(325,150):
		get_tree().change_scene_to_file("res://UI/lose.tscn")
	
func _on_key_a_3_animation_finished():
	$SpaceA3.play()
	if player.position == Vector2(510,150):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_a_4_animation_finished():
	$SpaceA4.play()
	if player.position == Vector2(695,150):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_b_1_animation_finished():
	$SpaceB1.play()
	if player.position == Vector2(140,325):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_b_2_animation_finished():
	$SpaceB2.play()
	if player.position == Vector2(325,325):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_b_3_animation_finished():
	$SpaceB3.play()
	if player.position == Vector2(510, 325):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_b_4_animation_finished():
	$SpaceB4.play()
	if player.position == Vector2(695, 325):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_c_1_animation_finished():
	$SpaceC1.play()
	if player.position == Vector2(140,500):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_c_2_animation_finished():
	$SpaceC2.play()
	if player.position == Vector2(325,500):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_c_3_animation_finished():
	$SpaceC3.play()
	if player.position == Vector2(510,500):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

func _on_key_c_4_animation_finished():
	$SpaceC4.play()
	if player.position == Vector2(695,500):
		get_tree().change_scene_to_file("res://UI/lose.tscn")

#OOPS DONT NEED THIS ----------------------------------------------------------
#func _on_a_1_body_entered(body):
#	if body.name == "Player" and $SpaceA1.is_playing():
#		body.queue_free()
#
#func _on_a_2_body_entered(body):
#	if body.name == "Player" and spaces["A2"] == 1:
#		body.queue_free()
#
#func _on_a_3_body_entered(body):
#	if body.name == "Player" and spaces["A3"] == 1:
#		body.queue_free()
#
#func _on_a_4_body_entered(body):
#	if body.name == "Player" and spaces["A4"] == 1:
#		body.queue_free()
#
#func _on_b_1_body_entered(body):
#	if body.name == "Player" and spaces["B1"] == 1:
#		body.queue_free()
#
#func _on_b_2_body_entered(body):
#	if body.name == "Player" and spaces["B2"] == 1:
#		body.queue_free()
#
#func _on_b_3_body_entered(body):
#	if body.name == "Player" and spaces["B3"] == 1:
#		body.queue_free()
#
#func _on_b_4_body_entered(body):
#	if body.name == "Player" and spaces["B4"] == 1:
#		body.queue_free()
#
#func _on_c_1_body_entered(body):
#	if body.name == "Player" and spaces["C1"] == 1:
#		body.queue_free()
#
#func _on_c_2_body_entered(body):
#	if body.name == "Player" and spaces["C2"] == 1:
#		body.queue_free()
#
#func _on_c_3_body_entered(body):
#	if body.name == "Player" and spaces["C3"] == 1:
#		body.queue_free()
#
#func _on_c_4_body_entered(body):
#	if body.name == "Player" and spaces["C4"] == 1:
#		body.queue_free()
