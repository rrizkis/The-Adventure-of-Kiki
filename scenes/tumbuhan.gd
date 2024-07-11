extends Area2D


var decrease = 100;
func _on_body_entered(body):
	if body.name == "Player":
		var player = body;
		if player.has_method("increase_speed"):
			player.decrease_speed(decrease)
		queue_free()
