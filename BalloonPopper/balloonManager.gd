extends Node3D

var Score : int = 0
@export var scoreText : Label

func increaseScore(Amount):
	Score += Amount
	scoreText.text = str("Score: ", Score)
	
	if Score >= 4:
		get_tree().quit()
