extends Area2D
@onready var invisible = $"../Player"

func _on_body_entered(body):
	if body.name == "Player":
		invisible.set_physics_process(true);
		$AudioStreamPlayer2D.play()
		
		queue_free()
