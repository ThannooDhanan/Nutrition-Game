extends Control

signal back_pressed

func _on_button_button_up():
	back_pressed.emit()
