extends Area3D

@export var clicksToPop : int = 3
@export var sizeIncrease : float = 0.25
var scoreToGive : int = 1

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * sizeIncrease
		clicksToPop -= 1
		
		if clicksToPop == 0:
			get_node("/root/Main").increaseScore(scoreToGive)
			queue_free()
