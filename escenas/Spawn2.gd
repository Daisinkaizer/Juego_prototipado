extends Position2D
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (PackedScene) var npc
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var tuvieja = npc.instance()
	get_tree().get_nodes_in_group("main")[0].add_child(tuvieja)
	tuvieja.global_position = global_position