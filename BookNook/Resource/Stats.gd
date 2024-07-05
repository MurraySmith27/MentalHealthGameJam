extends Resource

class_name Stats

@export var CurrentHealth : int
@export var MaxHealth : int
@export var Armour : int
@export var Speed : int
@export var Damage : int


func LoseHealth(value : int):
	if((CurrentHealth-value)>0):
		CurrentHealth -= value
	else:
		CurrentHealth = 0

func GainHealth(value : int):
	if((CurrentHealth+value)>MaxHealth):
		CurrentHealth = MaxHealth
	else:
		CurrentHealth += value
		
#Single Setter
func SetStats(cur : int, max : int, armour : int, speed : int, damage : int):
	CurrentHealth = cur
	MaxHealth = max
	Armour = armour
	Speed = speed
	Damage = damage
