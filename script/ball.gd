extends RigidBody3D

@export var rolling_force = 21
@export var jump_impulse = 937

func _ready():
	$Camerarig.set_as_top_level(true)
	$floorchack.set_as_top_level(true)

func _physics_process(delta):
	var old_camera_pos = $Camerarig.global_transform.origin
	var ball_pos = global_transform.origin
	var new_camera_pos = lerp(old_camera_pos, ball_pos, 0.1)
	$Camerarig.global_transform.origin = new_camera_pos
	
	$floorchack.global_transform.origin = global_transform.origin
	
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()
	
	if Input.is_action_pressed("left"):
		angular_velocity.x -= rolling_force*delta
	if Input.is_action_pressed("right"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("back"):
		angular_velocity.z += rolling_force*delta
	if Input.is_action_pressed("forward"):
		angular_velocity.z -= rolling_force*delta
	var is_on_floor = $floorchack.is_colliding()
	if Input.is_action_just_pressed("jump") and is_on_floor:
		apply_central_impulse(Vector3.UP*jump_impulse)
	
	
	
