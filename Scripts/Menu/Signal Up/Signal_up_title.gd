extends Control

signal play_pressed
signal instruction_pressed


func _on_play_button_up():
	play_pressed.emit()


func _on_instructions_button_up():
	instruction_pressed.emit()
