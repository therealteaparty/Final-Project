extends Control


func _ready():
	$Score.text = "You collected " + str(Global.coins) + " pieces of candy!"

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://Levels/level1.tscn")


func _on_quit_pressed():
	get_tree().quit()


