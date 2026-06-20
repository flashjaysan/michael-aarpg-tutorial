class_name PlayerStateMachine extends Node

var states: Array[State]
var previous_state: State
var current_state: State


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED


func Initialize() -> void:
	pass


func ChangeState(new_state: State) -> void:
	if new_state == null or new_state == current_state:
		return
	
	if current_state:
		current_state.Exit()
	
	previous_state = current_state
	current_state = new_state
	current_state.Enter()
