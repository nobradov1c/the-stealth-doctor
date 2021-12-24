extends Node

func _ready():
	randomize()

func generate_combination(length):
	var combination = []
	for _number in range(length):
		combination.append(randi() % 10)
	return combination
