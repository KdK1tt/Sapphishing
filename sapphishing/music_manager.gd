extends Node

var player: AudioStreamPlayer

func _ready() -> void:
	player = AudioStreamPlayer.new()
	add_child(player)

func play_song(song_path: String) -> void:
	if song_path == "":
		return

	var stream := load(song_path)

	if player.stream == stream and player.playing:
		return

	player.stream = stream
	player.play()

func stop_song() -> void:
	player.stop()
