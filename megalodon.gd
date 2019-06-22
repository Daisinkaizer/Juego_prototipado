extends KinematicBody2D
var velocidad = 200

func _process(delta):
	move_local_x(velocidad*delta)
	if global_position.x >= 400:
		velocidad = -300
	if global_position.x <= -400:
		velocidad = 200
		queue_free()