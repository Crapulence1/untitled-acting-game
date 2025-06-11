extends Node2D
var Deck = ["First", 2, 3, "Last"]

@onready var Card: PackedScene = preload("res://Scenes/Card.tscn") #preloads card 
@onready var spawn = $CanvasLayer/Spawn #defines card spawn point
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("activate_object"): #checks if spacebar is pressed from input mapping
		var _menu = get_node("Player Combat Menu") #gets combat menu from tree
		_menu.visible = true #makes it visible
	if get_node("Snapper").overlapping:
		get_node("test card").global_position = get_node("Snapper").global_position #snaps into position


func _on_debug_draw_pressed() -> void:
	var cardObj = Card.instantiate()
	spawn.add_child(cardObj)
	cardObj.setCardValues()
	pass # Replace with function body.
