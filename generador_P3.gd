extends Node2D

var objetivo = preload("res://escenas/pirana.tscn")

func _ready():
	
	pass
func _on_Timer_timeout():
	var objetivoinstancia = objetivo.instance()
	add_child(objetivoinstancia)
	pass

func spawnpirana():
	$Timer.start(randi())
	var objetivoinstancia = objetivo.instance()
	add_child(objetivoinstancia)
