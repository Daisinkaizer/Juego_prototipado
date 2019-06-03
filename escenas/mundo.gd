extends Node
var Score
signal iniciojuego
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func juego_nuevo():
	print(Score)
	Score = 0
	$ScoreTimer.start()
	
	
	
