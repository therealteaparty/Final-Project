extends Node2D

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
#
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
func _process(delta):
	pass
		
func random_choice(list):
	var choice_index = randi() % len(list)
	var chosen = list[choice_index]
	print(chosen)
	return chosen

func _on_chosen_space_timeout():
	var chosen = random_choice(choices)
	#play flashing animation for certain length, then check if player is there on.amination.finished() and body_entered choice, if yes, queue free
	
	spaces[chosen] = 1
	print(spaces)
	await get_tree().create_timer(3).timeout
	spaces[chosen] = 0
	print(spaces)
	$Chosen_Space.start()
	
func _on_countdown_timeout():
	get_tree().change_scene_to_file("res://UI/end.tscn")

func _on_a_1_body_entered(body):
	if body.name == "Player" and spaces["A1"] == 1:
		body.queue_free()

func _on_a_2_body_entered(body):
	if body.name == "Player" and spaces["A2"] == 1:
		body.queue_free()

func _on_a_3_body_entered(body):
	if body.name == "Player" and spaces["A3"] == 1:
		body.queue_free()

func _on_a_4_body_entered(body):
	if body.name == "Player" and spaces["A4"] == 1:
		body.queue_free()

func _on_b_1_body_entered(body):
	if body.name == "Player" and spaces["B1"] == 1:
		body.queue_free()

func _on_b_2_body_entered(body):
	if body.name == "Player" and spaces["B2"] == 1:
		body.queue_free()

func _on_b_3_body_entered(body):
	if body.name == "Player" and spaces["B3"] == 1:
		body.queue_free()

func _on_b_4_body_entered(body):
	if body.name == "Player" and spaces["B4"] == 1:
		body.queue_free()

func _on_c_1_body_entered(body):
	if body.name == "Player" and spaces["C1"] == 1:
		body.queue_free()

func _on_c_2_body_entered(body):
	if body.name == "Player" and spaces["C2"] == 1:
		body.queue_free()

func _on_c_3_body_entered(body):
	if body.name == "Player" and spaces["C3"] == 1:
		body.queue_free()

func _on_c_4_body_entered(body):
	if body.name == "Player" and spaces["C4"] == 1:
		body.queue_free()
