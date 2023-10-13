extends CharacterBody3D

<<<<<<< HEAD
@export var move_speed:float=4
@export var rot_speed:float=2

func _process(delta):
	var move = Input.get_axis("move_backward", "move_forward")
	
	translate(Vector3.FORWARD * move * delta * move_speed)
	
	var turn = Input.get_axis("move_right", "move_left")
=======
@export var move_speed:float=5
@export var rot_speed:float=1

func _process(delta):	
	var move = Input.get_axis("move_backwards", "move_forwards")
	print(move)
	
	translate(Vector3.FORWARD * move * delta * move_speed)
	
	var turn = Input.get_axis("turn_left", "turn_right")
>>>>>>> a82b7cc8dabf1ca080d427a179d12b7964758c50
	
	rotate(Vector3.UP, turn * rot_speed * delta)
