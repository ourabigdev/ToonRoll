extends Area3D


func _on_Area_body_entered(body):
	if body.name == "ball":
		get_tree().reload_current_scene()
