extends Control

@onready var inv2: Inv = preload("res://inventory/player2inv.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

var is_open = false

func _ready():
	inv2.update.connect(update_slots)
	update_slots()
	close()
	
func update_slots():
	for j in range(min(inv2.slots.size(), slots.size())):
		slots[j].update(inv2.slots[j])
	
func _process(delta):
	if Input.is_action_just_pressed("q") and get_parent().name=='Player1':
		if is_open:
			close()
		else:
			open()
	if Input.is_action_just_pressed("slash") and (get_parent().name=='Player2'):
		if is_open:
			close()
		else:
			open()

func open():
	visible = true
	is_open = true
	
func close():
	visible = false
	is_open = false
