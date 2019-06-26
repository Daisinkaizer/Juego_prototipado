extends Node



func _ready():
	$MarginContainer/VBoxContainer/TextureButton.grab_focus()


func _physics_process(delta):
	if $MarginContainer/VBoxContainer/TextureButton.is_hovered() == true:
		$MarginContainer/VBoxContainer/TextureButton.grab_focus()
		
	

func _on_TextureButton_pressed():
	get_tree().change_scene("res://escenas/Titlescreen.tscn")
