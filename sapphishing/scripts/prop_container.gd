extends CanvasGroup

var base_window_size: Vector2i

func _ready() -> void:
	var base_width: int = ProjectSettings.get_setting("display/window/size/viewport_width")
	var base_height: int = ProjectSettings.get_setting("display/window/size/viewport_height")
	base_window_size = Vector2i(base_width, base_height)


func _process(_delta: float) -> void:
	var normalized_pos = global_position / Vector2(base_window_size) # Map global_position to 0-1 range
	self.material.set_shader_parameter("rotation_pivot", normalized_pos)
