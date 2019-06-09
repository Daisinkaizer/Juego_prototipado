extends Node2D
export (PackedScene) var mob
var direction 

func _ready():
    randomize()

func _on_RingTimer_timeout():
	$caminoanillo/movimientoanillo.set_offset(randi())
	var mob = Mob.instance()
	add_child(Mob)
		 var direction = $caminoanillo/movimientoanillo.rotation + PI / 2
	mob.position = $caminoanillo/movimientoanillo.position
	direction += rand_range(-PI / 4, PI / 4)
	mob.rotation = direction
	mob.linear_velocity = Vector2(rand_range(mob.min_speed, mob.max_speed), 0)
    mob.linear_velocity = mob.linear_velocity.rotated(direction)
	
    
    
    
    
    # Set the velocity (speed & direction).
    
