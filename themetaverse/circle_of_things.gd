extends Node3D

@export var dod:PackedScene

@export var num_dod = 10
@export var r = 10

func _ready():
	
	var theta_inc = (PI * 2.0) / num_dod
	
	for i in num_dod:
		var james = dod.instantiate()
		var theta = theta_inc * i
		var pos = Vector3(sin(theta) * r, 0 , cos(theta) * r)
		james.transform.origin = pos
		
		var newMaterial = StandardMaterial3D.new() 
		
		newMaterial.albedo_color = Color.from_hsv(randf_range(0,1),1,1)
		james.get_node("dodecahedron").material_overide = newMaterial
		
		add_child(james)
