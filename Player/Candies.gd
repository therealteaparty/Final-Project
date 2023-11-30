extends TileMap

const BIG_NUMBER = 1000000
var coins = []


func _ready():
	for x in range(1000):
		for y in range(1000):
			if get_cell_source_id(0, Vector2i(x, y)) != -1:
				coins.append(Vector2(x,y))


func get_coins(p):
	var coords = local_to_map(to_local(p))
	var min_dist = BIG_NUMBER
	var which_coin = Vector2.ZERO
	for c in coins:
		var d = Vector2(coords).distance_to(c)
		if d < min_dist:
			min_dist = d
			which_coin = c
	if which_coin != Vector2.ZERO:
		call_deferred("set_cell", 0, which_coin, -1)
		Global.add_coin()
