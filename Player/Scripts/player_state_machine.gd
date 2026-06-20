class_name PlayerStateMachine extends Node

var states: Array[State]
var previous_state: State
var current_state: State


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED


func Initialize(_player: Player) -> void:
	states = []
	
	for child in get_children():
		if child is State:
			states.append(child)
	
	if states.size() > 0:
		states[0].player = _player
		ChangeState(states[0])
		process_mode = Node.PROCESS_MODE_INHERIT


func ChangeState(new_state: State) -> void:
	if new_state == null or new_state == current_state:
		return
	
	if current_state:
		current_state.Exit()
	
	previous_state = current_state
	current_state = new_state
	current_state.Enter()
