extends Area2D

var is_dragging : bool = false
var mouse_offset
var is_hovering : bool = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_dragging:
		#var tween = get_tree().create_tween()
		#tween.tween_property(get_parent(), "position", get_global_mouse_position(), 5 * delta)
		get_parent().global_position = get_global_mouse_position()


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			if is_hovering: #checks if mouse is clicked over sprite
				is_dragging = true
				#mouse_offset = get_global_mouse_position() - global_position
		else:
			is_dragging = false
			


func _on_mouse_entered() -> void:
	is_hovering = true


func _on_mouse_exited() -> void:
	is_hovering = false
