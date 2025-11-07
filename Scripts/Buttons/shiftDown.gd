extends Button
class_name shift_Down

@export var shift := 6

func _ready():
	connect("button_down", shiftDown)
	connect("button_up", shiftUp)

func shiftDown():
	global_position.y += shift

func shiftUp():
	global_position.y -= shift
