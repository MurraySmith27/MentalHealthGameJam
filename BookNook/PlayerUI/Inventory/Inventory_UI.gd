extends Control

@onready var inv : Inventory  = preload("res://PlayerUI/Inventory/PlayerInventory.tres")
@onready var slots : Array = $NinePatchRect/GridContainer.get_children()

var is_open = false;

func _ready():
	update_slots()
	open()
	
func _process(delta):
	if(Input.is_action_just_pressed("toggled_inventory_popup")):
		if is_open:
			close()
		else:
			open()

func update_slots():
	for i in range(min(inv.items.size(), slots.size())):
		slots[i].update(inv.items[i])

func open():
	visible = true;
	is_open = true;
	
	
func close():
	visible = false
	is_open = false
