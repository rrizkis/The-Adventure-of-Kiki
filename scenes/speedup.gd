extends Area2D

@onready var speedup = %GameManager
var speedBoostAmount = 100;
func _on_body_entered(body):
	if body.name == "Player":
		var player = body;
		if player.has_method("increase_speed"):
			player.increase_speed(speedBoostAmount)
		queue_free()
