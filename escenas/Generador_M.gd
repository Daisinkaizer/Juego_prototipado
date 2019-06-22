extends Node2D

var Objetivo = preload("res://escenas/megalodon.tscn")

func _ready():
	$Timer.start(rand_range(10,12))
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)
	pass

func _on_Timer_timeout():
	var objetivoInstancia = Objetivo.instance()
	add_child(objetivoInstancia)