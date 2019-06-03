extends CanvasLayer

func actualizar_puntos(Puntos):
	$Puntos.text = str(Puntos)

func mostrar_mensaje(texto):
	$Mensaje.text = texto
	$Mensaje.show()
	$Mensajetimer.start()


func _on_Mensaje_timer_timeout():
	$Mensaje.hide()

