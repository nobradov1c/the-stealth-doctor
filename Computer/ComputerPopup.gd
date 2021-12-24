extends Popup

func set_text(combination):
	$NinePatchRect/CenterContainer/NinePatchRect/Label.text = ("Access code is " + PoolStringArray(combination).join(""))
