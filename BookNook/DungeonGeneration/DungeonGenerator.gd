extends Node2D

var Room = preload("res://DungeonGeneration/Room/room.tscn");

@export var tile_size = 32
@export var num_rooms = 50
@export var min_size = 4
@export var max_size = 10
@export var hspread = 400
@export var cull_percent = 0.5

func _ready():
	randomize()
	make_rooms();
	
func make_rooms():
	
	for i in range(num_rooms):
		var pos = Vector2(randi_range(-hspread, hspread), 0)
		var r = Room.instantiate()
		var w = min_size + randi() % (max_size - min_size)
		var h = min_size + randi() % (max_size - min_size)
		r.make_room(pos, Vector2(w,h) * tile_size);
		$Rooms.add_child(r);
	await get_tree().create_timer(2.0).timeout;
	
	for room in $Rooms.get_children():
		if (randf() < cull_percent):
			room.queue_free() 
		else:
			room.freeze = true;
	
	

func _draw():
	for room in $Rooms.get_children():
		draw_rect(Rect2(room.position - room.size, room.size * 2), Color.GREEN, false)
		
func _process(_deltaTime):
	queue_redraw()
	
func _input(event):
	if event.is_action_pressed("ui_select"):
		for n in $Rooms.get_children():
			n.queue_free();
		make_rooms();
