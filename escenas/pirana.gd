extends KinematicBody2D

var velocidad = -100
func _process(delta):
	move_local_y(velocidad*delta)
	if global_position.y <= 0:
		queue_free()
