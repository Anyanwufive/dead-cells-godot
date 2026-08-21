extends CanvasLayer

func _ready() -> void:
	var touch_manager = TouchInputManager.new()
	add_child(touch_manager)
	
	# Draw touch control zones
	var left_zone = ColorRect.new()
	left_zone.color = Color(0, 0.5, 1, 0.1)
	left_zone.anchor_left = 0.0
	left_zone.anchor_top = 0.6
	left_zone.anchor_right = 0.25
	left_zone.anchor_bottom = 1.0
	add_child(left_zone)
	
	var left_label = Label.new()
	left_label.text = "LEFT"
	left_label.anchor_left = 0.0
	left_label.anchor_top = 0.8
	left_label.anchor_right = 0.25
	left_label.alignment = HORIZONTAL_ALIGNMENT_CENTER
	left_label.add_theme_font_size_override("font_sizes/font_size", 14)
	add_child(left_label)
	
	var jump_zone = ColorRect.new()
	jump_zone.color = Color(0, 1, 0, 0.1)
	jump_zone.anchor_left = 0.0
	jump_zone.anchor_top = 0.0
	jump_zone.anchor_right = 0.25
	jump_zone.anchor_bottom = 0.4
	add_child(jump_zone)
	
	var jump_label = Label.new()
	jump_label.text = "JUMP"
	jump_label.anchor_left = 0.0
	jump_label.anchor_top = 0.15
	jump_label.anchor_right = 0.25
	jump_label.alignment = HORIZONTAL_ALIGNMENT_CENTER
	jump_label.add_theme_font_size_override("font_sizes/font_size", 14)
	add_child(jump_label)
	
	var right_zone = ColorRect.new()
	right_zone.color = Color(0, 0.5, 1, 0.1)
	right_zone.anchor_left = 0.75
	right_zone.anchor_top = 0.6
	right_zone.anchor_right = 1.0
	right_zone.anchor_bottom = 1.0
	add_child(right_zone)
	
	var right_label = Label.new()
	right_label.text = "RIGHT"
	right_label.anchor_left = 0.75
	right_label.anchor_top = 0.8
	right_label.anchor_right = 1.0
	right_label.alignment = HORIZONTAL_ALIGNMENT_CENTER
	right_label.add_theme_font_size_override("font_sizes/font_size", 14)
	add_child(right_label)
	
	var dash_zone = ColorRect.new()
	dash_zone.color = Color(1, 1, 0, 0.1)
	dash_zone.anchor_left = 0.75
	dash_zone.anchor_top = 0.0
	dash_zone.anchor_right = 1.0
	dash_zone.anchor_bottom = 0.4
	add_child(dash_zone)
	
	var dash_label = Label.new()
	dash_label.text = "DASH"
	dash_label.anchor_left = 0.75
	dash_label.anchor_top = 0.15
	dash_label.anchor_right = 1.0
	dash_label.alignment = HORIZONTAL_ALIGNMENT_CENTER
	dash_label.add_theme_font_size_override("font_sizes/font_size", 14)
	add_child(dash_label)
	
	var attack_zone = ColorRect.new()
	attack_zone.color = Color(1, 0, 0, 0.1)
	attack_zone.anchor_left = 0.75
	attack_zone.anchor_top = 0.5
	attack_zone.anchor_right = 1.0
	attack_zone.anchor_bottom = 0.95
	add_child(attack_zone)
	
	var attack_label = Label.new()
	attack_label.text = "ATTACK"
	attack_label.anchor_left = 0.75
	attack_label.anchor_top = 0.65
	attack_label.anchor_right = 1.0
	attack_label.alignment = HORIZONTAL_ALIGNMENT_CENTER
	attack_label.add_theme_font_size_override("font_sizes/font_size", 14)
	add_child(attack_label)
