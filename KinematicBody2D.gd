extends KinematicBody2D
var velocidad = Vector2(0,0)
var screen_size;
var gravedad = 15;
var is_dead = false
var vida = 3
signal muerto

func _ready():
	hide()
	screen_size = get_viewport_rect().size
	$jugador_colision.disabled = true

func _physics_process(delta):
	#print(vida)
	if is_dead == false:

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
		if get_slide_count() > 0:
			for i in range(get_slide_count()):
				if "tiburoncin" in get_slide_collision(i).collider.name:
					dano()
					corazon()
					$StopGolpe.start()
					$SonidoGolpe.play()
				if "pirana" in get_slide_collision(i).collider.name:
					dano()
					corazon()
					$StopGolpe.start()
					$SonidoGolpe.play()
				if vida <= 0:
						dead()
				print (vida)

func dead():
	is_dead = true
	$jugador_sprite.play("muerte")
	velocidad = Vector2(0, 0)
	$Respawn.start()
	emit_signal("muerto")

func inicio(pos):
	position = pos
	show()
	$jugador_colision.disabled = false





func _on_Timer_timeout():
	get_tree().change_scene("res://escenas/Titlescreen.tscn")

#cuando el boton arriba se pulsa:
func _on_Botonarriba_pressed():
	velocidad.y -= 250
	if velocidad.y > 500:
		velocidad.y = 0

#cuando el boton derecha se pulsa:
func _on_BotonDer_pressed():
	velocidad.x += 300;
	$SoltarBoton.start()

#cuando el boton izquierda se pulsa:
func _on_BotonIzq_pressed():
	velocidad.x -= 300;
	$SoltarBoton.start()
	
func _on_SoltarBoton_timeout():
	velocidad.x = 0

func dano():
	vida -= 1
	$jugador_sprite.play("muerte")
	$jugador_colision.disabled = true
	$CoolDown.start()
	$SonidoGolpe.stop()

func _on_CoolDown_timeout():
	$jugador_sprite.play("buzo")
	$jugador_colision.disabled = false
	

func corazon():
	if vida <= 2:
		$CanvasLayer2/corazon3.hide()
	if vida <= 1:
		$CanvasLayer2/corazon2.hide()
	if vida <= 0:
		$CanvasLayer2/Corazon.hide()



func sonido():
	$SonidoGolpe.stop()