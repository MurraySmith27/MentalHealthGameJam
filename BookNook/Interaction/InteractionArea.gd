extends Area3D
class_name InteractionArea

@export var action_name: String = "interact"


var interact: Callable = func():
	pass


func _on_body_entered(body):
	if(body is CharacterBody3D):
		InteractionManager.register_area(self)
		print("Player in range")


func _on_body_exited(body):
	InteractionManager.unregister_area(self)
	print("Left")
