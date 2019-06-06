extends Node2D
var objetivo = preload("res://escenas/pirana.tscn")

func _ready():
	$Timer.start(rand_range(1,8))
	var objetivoinstancia = objetivo.instance()
	add_child(objetivoinstancia)
	pass
func _on_Timer_timeout():
	var objetivoinstancia = objetivo.instance()
	add_child(objetivoinstancia)
	pass
