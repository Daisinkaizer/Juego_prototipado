extends AnimatedSprite

func _ready():
	$Area2D/CollisionShape2D.disabled = true

func _process(delta):
	position.x -= 5
	pass

func _on_Area2D_area_entered(area):
	queue_free()
	pass

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass