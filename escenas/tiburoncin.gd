extends KinematicBody2D

var velocidad = -150


func _process(delta):
	move_local_x(velocidad*delta)
	if global_position.x <= 0:
		queue_free()
