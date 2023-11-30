extends Control

func _on_restart_2_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Levels/level1.tscn")


func _on_quit_2_pressed():
	get_tree().quit()
