extends KinematicBody2D
var velocidad = -200

func _process(delta):
	move_local_x(velocidad*delta)
	if global_position.x <= 1183.71:
		velocidad = 300
	if global_position.x > 1761.135:
		queue_free()
