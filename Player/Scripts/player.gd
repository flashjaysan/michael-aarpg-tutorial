class_name Player extends CharacterBody2D

var move_speed: float = 100.0


func _process(delta: float) -> void:
	var direction: Vector2 = Vector2.ZERO
