extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://GameOver..tscn")
		queue_free()
