extends ProgressBar

#@export var player : Player

func _ready():
	#player.healthChanged.connect(update)
	update()
	
func update():
	value =  51 #player current health / max health * 100
	
