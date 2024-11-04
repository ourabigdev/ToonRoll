extends Node3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_down():
	$CanvasLayer/Button/click.play()
	$CanvasLayer/Label.queue_free()
	$CanvasLayer/Button.queue_free()
	$CanvasLayer/info.queue_free()
	scenetransition.change_scene_to_file("res://scene/tutorial.tscn")


func _on_info_button_down():
	$CanvasLayer/Button/click.play()
	$CanvasLayer/Button.queue_free()
	$CanvasLayer/info.queue_free()
	$CanvasLayer/Label.queue_free()
	scenetransition.change_scene_to_file("res://scene/info.tscn")
