extends Control



func _on_button_back_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
