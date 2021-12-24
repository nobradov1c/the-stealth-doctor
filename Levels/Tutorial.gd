extends Node2D

func _ready():
	yield(get_tree(), "idle_frame")
	update_pointer_positions(0)

func update_pointer_positions(objective_number):
	var pointer = $ObjectivePointer
	var place = $ObjectivePositions.get_child(objective_number)
	var message = $ObjectiveMessages.get_child(objective_number)
	
	$Tween.interpolate_property(pointer, "position", pointer.position,
			place.position, 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	$Tween.start()
	$MessageSound.play()
	$TutorialGUI/AnimationPlayer.play("MessageChange")
	$TutorialGUI/Control/NinePatchRect/Label.text = message.message

var moveObjectiveActivated = false
func _on_MoveObjective_body_entered(_body):
	if moveObjectiveActivated == false:
		update_pointer_positions(1)
		moveObjectiveActivated = true

var doorObjectiveActivated = false
func _on_DoorObjective_body_entered(_body):
	if doorObjectiveActivated == false:
		update_pointer_positions(2)
		doorObjectiveActivated = true

var nightvisionObjectiveActivated = false
func _on_NightvisionObjective_body_entered(_body):
	if nightvisionObjectiveActivated == false:
		update_pointer_positions(3)
		nightvisionObjectiveActivated = true

var lockedDoorObjectiveActivated = false
func _on_LockedDoorObjective_body_entered(_body):
	if lockedDoorObjectiveActivated == false:
		update_pointer_positions(4)
		lockedDoorObjectiveActivated = true

var computerObjectiveActivated = false
func _on_ComputerObjective_body_entered(_body):
	if computerObjectiveActivated == false:
		update_pointer_positions(5)
		computerObjectiveActivated = true

var exitObjectiveActivated = false
func _on_ExitObjective_body_entered(_body):
	if exitObjectiveActivated == false:
		update_pointer_positions(6)
		exitObjectiveActivated = true

var lootObjectiveActivated = false
func _on_LootObjective_body_entered(_body):
	if lootObjectiveActivated == false:
		update_pointer_positions(7)
		lootObjectiveActivated = true

