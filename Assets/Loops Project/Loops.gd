extends Node2D

@export var spawnCount : int = 200
var starScene = preload("res://Assets/Loops Project/star.tscn")

func _ready() -> void:
	for i in spawnCount:
		var star = starScene.instantiate()
		var starSize = randf_range(0.5, 1)
		
		add_child(star)
		star.position.x = randi_range(-280, 280)
		star.position.y = randi_range(-150, 150)
		star.scale.x = starSize
		star.scale.y = starSize
