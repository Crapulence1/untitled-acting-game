extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("activate_object"): #checks if spacebar is pressed from input mapping
		var _menu = get_node("Player Combat Menu") #gets combat menu from tree
		_menu.visible = true #makes it visible
