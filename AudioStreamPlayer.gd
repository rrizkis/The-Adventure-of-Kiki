extends AudioStreamPlayer


var audio_player: AudioStreamPlayer = null

func _ready():
	# Dapatkan node AudioStreamPlayer2D
	audio_player = get_node("AudioStreamPlayer")

	# Hubungkan sinyal "scene_changed" ke fungsi "on_scene_changed"

func on_scene_changed():
	# Periksa apakah scene baru telah dimuat
	if get_tree().current_scene != null:
		# Dapatkan nama scene baru
		var scene_name = get_tree().current_scene.name

		# Periksa apakah scene baru memiliki node AudioStreamPlayer2D
		var scene_audio_player = get_tree().current_scene.get_node("AudioStreamPlayer2D")

		# Jika scene baru memiliki node AudioStreamPlayer2D, atur sebagai audio player baru
		if scene_audio_player != null:
			audio_player = scene_audio_player

		# Periksa apakah scene baru memiliki audio yang ingin diputar
		var audio_resource = get_tree().current_scene.get("audio")

		# Jika scene baru memiliki audio, set ke AudioStreamPlayer2D
		if audio_resource != null:
			audio_player.stream = audio_resource

		# Putar audio
		audio_player.play()
