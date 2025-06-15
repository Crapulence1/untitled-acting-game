extends Area2D

var overlapping : bool = false
var enteredCard : Node2D = null
#Called when the node enters the scene tree for the first time.

#func _process(_delta: float) -> void:
	#if Input.is_action_pressed("activate_object"): #checks if spacebar is pressed from input mapping
		#var _menu = get_node("Player Combat Menu") #gets combat menu from tree
		#_menu.visible = true #makes it visible
	#if overlapping and enteredCard.is_in_group("Cards") and not enteredCard.get_node("Dragging_box").is_dragging:
	#	enteredCard.global_position = lerp(enteredCard.global_position, global_position, 10 * _delta) #snaps into position

func _on_area_entered(area: Area2D) -> void:
	overlapping = true
	enteredCard = area.get_parent()

func _on_area_exited(area: Area2D) -> void:
	if enteredCard == area.get_parent():
		enteredCard = null
		overlapping = false
