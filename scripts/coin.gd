extends Area2D

@onready var game_maniger: Node = %"game maniger"
@onready var animation_player: AnimationPlayer = $AnimatedSprite2D/pickup/AnimationPlayer


func _on_body_entered(body):
	game_maniger.add_point()
	animation_player.play("pickup")
