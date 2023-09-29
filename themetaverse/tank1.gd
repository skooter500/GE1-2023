extends CharacterBody3D

@export var move_speed:float=4
@export var rot_speed:float=2

func _process(delta):
	var move = Input.get_axis("move_backward", "move_forward")
	
	translate(Vector3.FORWARD * move * delta * move_speed)
	
	var turn = Input.get_axis("move_right", "move_left")
	
	rotate(Vector3.UP, turn * rot_speed * delta)
