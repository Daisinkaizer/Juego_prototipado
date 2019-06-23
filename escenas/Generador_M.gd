extends Node2D
signal megalodon
var Objetivo = preload("res://escenas/megalodon.tscn")

func _ready():
	pass

func _on_Timer_timeout():
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)

func spawnlodon():
	$Timerlodon.start(rand_range(10,15))
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)