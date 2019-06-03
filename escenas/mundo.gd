extends Node
var Score = 0
signal iniciojuego
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$ScoreTimer.start()
	print(Score)
	pass # Replace with function body.

func juego_nuevo():
	#print(Score)
	Score = 0
	$ScoreTimer.start()
	
	
	


func _on_ScoreTimer_timeout():
	Score += 1
	print(Score)
	pass # Replace with function body.
