extends NinePatchRect
var toggled_menu = false

# Called when the node enters the scene tree for the first time.
func _ready():
	toggled_menu = false
	self.visible = false
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func toggled_menu_popup():
	toggled_menu = !toggled_menu
	if toggled_menu:
		self.visible = true
	else:
		self.visible = false
