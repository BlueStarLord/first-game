extends Node

var score = 0

@onready var score_lable: Label = $"../score lable"

func add_point():
	score += 1
	score_lable.text =  " you collected " +  str(score) +  " coins"
	
