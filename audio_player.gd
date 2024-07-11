extends AudioStreamPlayer

const level_music = preload("res://music/BacksoundHomeGame.mp3")

func _play_music(music: AudioStream, volume = 0.0) -> void:
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
		
func play_music_level() -> void:
	_play_music(level_music)
