extends "res://Doors/Door.gd"

func _ready():
	$Label.rect_rotation = -rotation_degrees

func _on_Door_input_event(_viewport, _event, _shape_idx):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and can_click:
		$CanvasLayer/Numpad.popup_centered()

func _on_Door_body_exited(body):
	if body.collision_layer == 1:
		can_click = false
		$CanvasLayer/Numpad.hide()

func _on_Numpad_combination_correct():
	open()
	$CanvasLayer/Numpad.hide()

func _on_Computer_combination(combination, lock_group):
	$CanvasLayer/Numpad.combination = combination
	$Label.text = lock_group

func _on_Computer2_combination(combination, lock_group):
	$CanvasLayer/Numpad.combination = combination
	$Label.text = lock_group
