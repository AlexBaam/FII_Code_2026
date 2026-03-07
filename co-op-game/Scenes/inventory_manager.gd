extends Node2D

#for inventory

@export var inv: Inv

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func collect(item):
	inv.insert(item)
