extends Node
class_name TouchInputManager

var touch_enabled: bool = true
var player: Player
var is_attacking: bool = false
var attack_cooldown: float = 0.0

func _ready() -> void:
	player = get_tree().root.get_child(0).find_child("Player", true, false)

func _input(event: InputEvent) -> void:
	if not touch_enabled or not player:
		return
	
	if event is InputEventScreenTouch:
		if event.pressed:
			handle_touch_pressed(event.position)
		else:
			handle_touch_released(event.position)
	
	if event is InputEventScreenDrag:
		handle_touch_drag(event.position, event.relative)

func handle_touch_pressed(position: Vector2) -> void:
	var screen_size = get_viewport_rect().size
	var quarter_width = screen_size.x / 4
	var half_height = screen_size.y / 2
	
	# Left side - Movement
	if position.x < quarter_width:
		if position.y > half_height:
			# Bottom left - Move left
			Input.action_press("move_left")
		else:
			# Top left - Jump
			Input.action_press("ui_accept")
	
	# Right side - Actions
	elif position.x > screen_size.x - quarter_width:
		if position.y > half_height:
			# Bottom right - Attack
			Input.action_press("attack")
		else:
			# Top right - Dash
			Input.action_press("dash")
	
	# Center - Move right
	else:
		Input.action_press("move_right")

func handle_touch_released(position: Vector2) -> void:
	Input.action_release("move_left")
	Input.action_release("move_right")
	Input.action_release("ui_accept")
	Input.action_release("attack")
	Input.action_release("dash")

func handle_touch_drag(position: Vector2, relative: Vector2) -> void:
	var screen_size = get_viewport_rect().size
	
	if position.x < screen_size.x / 3:
		if relative.x < 0:
			Input.action_press("move_left")
		elif relative.x > 0:
			Input.action_release("move_left")
	else:
		if relative.x > 0:
			Input.action_press("move_right")
		elif relative.x < 0:
			Input.action_release("move_right")
