extends CanvasLayer

@onready var OptionsMenu = get_node_or_null("%OptionsMenu") as NinePatchRect
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if event.is_action_pressed("toggled_menu_popup"):
		if(OptionsMenu != null):
			OptionsMenu.toggled_menu_popup()
	pass
