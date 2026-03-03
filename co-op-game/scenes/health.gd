extends Node2D

@export var MAX_HEALTH: float = 10.0
var health: float

func _ready():
	health = MAX_HEALTH
