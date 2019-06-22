extends Node2D
var Objetivo = preload("res://escenas/tiburoncin.tscn")

func _ready():
	pass

func _on_Timer_timeout():
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)
	pass

func spawntiburon():
	$Timer.start(rand_range(4,8))
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)