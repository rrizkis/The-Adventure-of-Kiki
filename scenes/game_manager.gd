extends Node
var score = 0
var up = 0
@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "SCORE : " + str(score)

