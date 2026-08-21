extends Node

func _ready() -> void:
	# Detect if running on mobile
	var is_mobile = OS.get_name() in ["Android", "iOS"]
	
	if is_mobile:
		# Enable mobile optimizations
		get_window().content_scale_factor = 1.5
		get_window().content_scale_mode = Window.CONTENT_SCALE_MODE_VIEWPORT
		
		# Add mobile HUD
		var mobile_hud = preload("res://src/ui/mobile_hud.tscn").instantiate()
		get_tree().root.add_child(mobile_hud)

class_name MobileDetector
