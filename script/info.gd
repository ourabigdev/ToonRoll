extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_Button_button_down():
	$CanvasLayer/Button/click.play()
	$CanvasLayer/Button.queue_free()
	scenetransition.change_scene_to_file("res://scene/MENU.tscn")
