extends Area2D
@onready var game_manager = %GameManager

func _on_body_entered(body):
	if body.name == "Player":
		game_manager.add_point()
		queue_free()
