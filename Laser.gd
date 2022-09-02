extends Spatial

var distance
	
func _process(delta):
	if $RayCast.get_collider(): 
		# Calculating the distance between the laser and a collision point.
		distance = transform.origin.distance_to($RayCast.get_collision_point())
		# Scaler is scaling to the collision point.
		$Scaler.scale.z = distance /2
	else:
		# If the raycast is not colliding  with anything then the Scaler's scale is long as the raycast length.
		$Scaler.scale.z = $RayCast.cast_to.z
	
