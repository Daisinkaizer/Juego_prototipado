extends KinematicBody2D

var velocidad = -500

func _process(delta):
	move_local_x(velocidad*delta)
	if global_position.x <= 0:
		queue_free()
