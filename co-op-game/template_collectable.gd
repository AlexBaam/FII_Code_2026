extends StaticBody2D

@export var item: InvItem
var player = null

func _on_interactable_area_body_entered(body):
	if body.name == "Player2":
		player = body
		playercollect()
		await get_tree().create_timer(0.1).timeout
		self.queue_free()
		
func playercollect():
	var inv_manager = player.get_node("InventoryManager")
	if inv_manager:
		inv_manager.collect(item)
