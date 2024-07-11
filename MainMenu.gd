extends Control

@onready var global_backsound = get_node("GlobalBacksound")

func _on_scene_enter():
	global_backsound.play()

func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://Level.tscn")


func _on_button_settings_pressed():
	get_tree().change_scene_to_file("res://Settings.tscn")


func _on_button_exit_pressed():
	get_tree().quit()


func _on_button_info_pressed():
	get_tree().change_scene_to_file("res://Info.tscn")
	

