extends Node
var Score = 0
signal iniciojuego
func _ready():
	#$jugador.hide()
#	$generador_P.hide()
##	$generador_P2.hide()
#	$generador_T.hide()
#	$generador_T2.hide()
	$InicioTimer.start()
	
	yield($InicioTimer, "timeout")
	juego_nuevo()
	
	
	$Interfaz.mostrar_mensaje("¡Listo!")
	

func juego_nuevo():
	Score = 0
	$ScoreTimer.start()
	print(Score)
	$jugador.show()
	$jugador.inicio($Spawn.position)
#	$generador_P.show()
#	$generador_P2.show()
#	$generador_T.show()
#	$generador_T2.show()
	


func _on_ScoreTimer_timeout():
	Score += 1
	$Interfaz.actualizar_puntos(Score)
	print(Score)
	if Score > 1:
		yield($Timerspawnmegalodon, "timeout")
		$Generador_M.spawnlodon()
	if Score > 40:
		yield($Timerspawnpirana1, "timeout")
		$generador_P.spawnpirana()
	if Score > 40:
		yield($Timerspawnpirana2, "timeout")
		$generador_P2.spawnpirana()
	
	if Score > 20:
		yield($Timerspawntiburon1, "timeout")
		$generador_T.spawntiburon()
	if Score > 20:
		yield($Timerspawntiburon2, "timeout")
		$generador_T2.spawntiburon()

	pass # Replace with function body.


func _on_InicioTimer_timeout():
	
	pass # Replace with function body.

func game_over():
	$Interfaz.mostrar_mensaje("¡Pezdiste!")
	























