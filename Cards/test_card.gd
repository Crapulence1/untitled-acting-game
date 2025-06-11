extends Sprite2D

var is_dragging = false
var mouse_offset


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_dragging:
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", get_global_mouse_position(), 5 * delta)
	

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			if get_rect().has_point(to_local(event.position)): #checks if mouse is clicked over sprite
				is_dragging = true
				#mouse_offset = get_global_mouse_position() - global_position
		else:
			is_dragging = false
