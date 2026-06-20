class_name PlayerStateMachine extends Node

var states: Array[State]
var previous_state: State
var current_state: State


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED


func ChangeState(new_state: State) -> void:
	pass
