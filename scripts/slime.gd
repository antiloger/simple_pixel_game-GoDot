extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right  = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprit = $AnimatedSprite2D

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprit.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprit.flip_h = false
		
	position.x += direction * SPEED * delta
