class_name HotkeyRebindButton
extends Control

@onready var label = $HBoxContainer/Label as Label
@onready var button = $HBoxContainer/Button as Button

@export var action_name : String = "move_left"

func _ready():
	set_process_unhandled_key_input(false)
	set_action_name()
	set_text_for_key()

func set_action_name() -> void:
	label.text = "Unassigned"
	
	match action_name:
		"move_left":
			label.text = "Move Left"
		"move_right":
			label.text = "Move Right"
		"jump":
			label.text = "Jump"

func set_text_for_key() -> void:
	var action_events = InputMap.action_get_events(action_name)
	print_debug("Action Events for '%s': %s" % [action_name, action_events])  # Debugging line

	if action_events.size() > 0:
		for event in action_events:
			if event is InputEventKey:
				var action_keycode = OS.get_keycode_string(event.physical_keycode)
				button.text = "%s" % action_keycode
				return
			elif event is InputEventJoypadButton:
				button.text = "Joypad Button %s" % event.button_index
				return
			elif event is InputEventMouseButton:
				button.text = "Mouse Button %s" % event.button_index
				return
	button.text = "No key assigned"
