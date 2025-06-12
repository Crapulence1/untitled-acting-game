extends Node2D

@onready var Card: PackedScene = preload("res://Scenes/Card.tscn") #preloads card 
@onready var spawn = $CanvasLayer/Spawn #defines card spawn point
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("activate_object"): #checks if spacebar is pressed from input mapping
		var _menu = get_node("Player Combat Menu") #gets combat menu from tree
		_menu.visible = true #makes it visible
	if get_node("Snapper").overlapping:
		get_node("test card").global_position = get_node("Snapper").global_position #snaps into position

func _on_debug_create_card_pressed():
	var cardObj = Card.instantiate()
	spawn.add_child(cardObj)
	cardObj.setCardValues(1,"racist","hes racist...")
	cardObj.visible = true
