extends Control

func _on_animation_player_animation_finished(_anim_name):
	get_tree().change_scene_to_file("res://UI/losescreen.tscn")

