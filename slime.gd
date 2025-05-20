extends Node2D

const speed = 30

var directon = 1
@onready var raycast_right: RayCast2D = $"raycast right"
@onready var ray_cast_left: RayCast2D = $"RayCast left"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if raycast_right.is_colliding():
		directon = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		directon = 1
		animated_sprite.flip_h = false
	position.x += directon * speed * delta
