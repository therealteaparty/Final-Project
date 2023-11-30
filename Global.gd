extends Node

var coins = 0

func _ready():
	process_mode = Node.PROCESS_MODE_ALWAYS

func _process(_delta):
	if Input.is_action_just_pressed("menu"):
		var menu = get_node_or_null("/root/Level/UI/Pause")
		if menu == null:
			get_tree().quit()
		else:
			if menu.visible:
				get_tree().paused = false
				menu.hide()
			else:
				get_tree().paused = true
				menu.show()
				
func add_coin():
	coins += 1
	var COINS = get_node_or_null("/root/Level/UI/HUD/Coins")
	if COINS != null:
		COINS.text = "CANDIES: " + str(coins)
