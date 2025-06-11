extends Area2D

var overlapping = false
#Called when the node enters the scene tree for the first time.

func _on_area_entered(area: Area2D) -> void:
	overlapping = true

func _on_area_exited(area: Area2D) -> void:
	overlapping = false
