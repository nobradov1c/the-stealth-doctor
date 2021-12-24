extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Briefcase_body_entered(body):
	body.collect_briefcase()
	queue_free()
