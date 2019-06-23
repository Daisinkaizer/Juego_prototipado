extends KinematicBody2D

var velocidad = -350
func _process(delta):
	move_local_y(velocidad*delta)
	if global_position.y <= 0:
		queue_free()
