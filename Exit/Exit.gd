extends ColorRect

export var level = "exit"

func _on_Area2D_body_entered(body):
	if body.has_node("Briefcase"):
		if(level == 'exit'):
			get_tree().change_scene("res://Levels/VictoryScreen.tscn")
		else:
			get_tree().change_scene("res://Levels/Level" + str(level)+".tscn")
