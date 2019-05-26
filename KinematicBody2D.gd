extends KinematicBody2D
var velocidad = Vector2(0,0)
var screen_size;
var gravedad = 15;

func _ready():
	#hide()
	screen_size = get_viewport_rect().size

func _physics_process(delta):

	if velocidad.y < 100:
		velocidad.y += gravedad;
	if Input.is_action_pressed("ui_right")and velocidad.x < 100:
		velocidad.x += 30;
	if Input.is_action_pressed("ui_left") and velocidad.x > -100:
		velocidad.x -= 30;
	if Input.is_action_just_released("ui_right"):
		velocidad.x = 0;
	if Input.is_action_just_released("ui_left"):
		velocidad.x = 0;
	if Input.is_action_just_pressed("ui_up"):
		velocidad.y = -250

	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	pass
	move_and_slide(velocidad)