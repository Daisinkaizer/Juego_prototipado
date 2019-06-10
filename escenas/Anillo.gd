extends Node2D
export (PackedScene) var ring


func _ready():
    randomize()

func _on_RingTimer_timeout():
	$caminoanillo/movimientoanillo.set_offset(randi())
	var R = ring.instance()
	add_child(R)
	
	
	var d = $caminoanillo/movimientoanillo.rotation
	
	R.position = $caminoanillo/movimientoanillo.position
	
	d += rand_range(-PI /4, PI /4)
	
	R.rotation = d
	
	R.set_linear_velocity(Vector2(rand_range(R.velocidad_min, R.velocidad_max), 0).rotated(d))
	
	
	
	