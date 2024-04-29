extends Node

@onready var score_marker = $score_mark
var score = 0

func add_point():
	score += 1
	score_marker.text = "Your Score" + str(score)
