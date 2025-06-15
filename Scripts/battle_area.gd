extends Node2D

@onready var Card: PackedScene = preload("res://Scenes/Card.tscn") #preloads card 
#@onready var spawn = $CanvasLayer/Spawn #defines card spawn point
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var snapper = get_node("Snapper")
	if Input.is_action_pressed("activate_object"): #checks if spacebar is pressed from input mapping
		var _menu = get_node("Player Combat Menu") #gets combat menu from tree
		_menu.visible = true #makes it visible
	if snapper.overlapping and snapper.enteredCard.is_in_group("Cards") and not snapper.enteredCard.get_node("Dragging_box").is_dragging:
		snapper.enteredCard.global_position = get_node("Snapper").global_position #snaps into position

func _on_debug_create_card_pressed() -> void:
	var cardObj = Card.instantiate()
	cardObj.setCardValues(1,"racist","hes racist...")
	#spawn.add_child(cardObj)
	
