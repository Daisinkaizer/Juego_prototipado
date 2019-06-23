extends Node
var Score = 0
func _ready():
	#$jugador.hide()
#	$generador_P.hide()
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
	if Score > 85:
		$jugador/CanvasLayer2/cuidado.show()
		yield($Timerspawnmegalodon, "timeout")
		$Generador_M.spawnlodon()
		$jugador/CanvasLayer2/cuidado.hide()
	if Score > 5:
		yield($timerspawnpirana, "timeout")
		$Spawn1/AnimationPlayer.play("movimientospawn")
		$Spawn1/Timer.start(rand_range(0.5,2))
	if Score > 1:
		yield($Timerspawnmegalodon2, "timeout")
		$Spawn4/Timer.start(rand_range(5,10))
	if Score >  25:
		yield($timerspawnpirana, "timeout")
		$Spawn2/AnimationPlayer.play("movimientotiburon")
		$Spawn2/Timer.start(rand_range(1,2))
	if Score > 25:
		$Spawn1/Timer.start(rand_range(0.5,1))
		
	if Score > 45:
		$Spawn2/Timer.start(rand_range(1,2))
	if Score > 50:
		$Spawn3/AnimationPlayer.play("movimientotiburon2")
		$Spawn3/Timer.start(rand_range(1,1.2))
	if Score > 170:
		$Spawn1/Timer.start(rand_range(0.3,0.9))
		

#	if Score > 0:
#		yield($Timerspawnpirana1, "timeout")
#		$generador_P.spawnpirana()
#	if Score > 10:
#		yield($Timerspawnpirana2, "timeout")
#		$generador_P2.spawnpirana()
#
#	if Score > 10:
#		yield($Timerspawntiburon1, "timeout")
#		$generador_T.spawntiburon()
#	if Score > 15:
#		yield($Timerspawntiburon2, "timeout")
#		$generador_T2.spawntiburon()
#	if Score > 5:
#		yield($Timerspawnpirana3, "timeout")
#		$generador_P3.spawnpirana()
	pass # Replace with function body.


func _on_InicioTimer_timeout():
	
	pass # Replace with function body.

func game_over():
	$Interfaz.mostrar_mensaje("¡Pezdiste!")
	























