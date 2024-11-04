extends Area3D

@export var Next_level ="" # (String, FILE, ".tscn")
func _on_victoryzone_body_entered(body):
	if body.name == "ball":
		scenetransition.change_scene_to_file(Next_level)
