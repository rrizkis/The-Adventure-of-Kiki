extends CollisionShape2D


var SPEED = 175.0
var acceleration = 4
@export var player : Node2D
@onready var nav_agent : NavigationAgent2D = $Node2D/NavigationAgent2D

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://GameOver..tscn")
		queue_free()

func _physics_process(delta):
	var direction = Vector2.ZERO
	direction = nav_agent.get_next_path_position() - global_position
	direction = direction.normalized()
	

	

func _on_timer_timeout():
	nav_agent.target_position = player.global_position
