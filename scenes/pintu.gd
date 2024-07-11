extends Area2D
@onready var gameOv = "res://GameOver.tscn"
func _on_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://victory.tscn")
		queue_free()
		
