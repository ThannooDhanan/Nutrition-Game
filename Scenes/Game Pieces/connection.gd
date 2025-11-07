extends Control

var point1 : Vector2
var _point2 : Vector2
var endPoint : Vector2
var mousePosition : Vector2
var buttonClicked := false


@onready var connectionButton := $Button
@onready var connectionLine := $"../Connector"

func _ready():
	#allows Control nodes to handle input events
	set_process(true)
	set_process_input(true)

func _draw():
	if point1 != Vector2.ZERO:
		draw_line(point1, _point2, Color.BLACK, 10)

func _input(event):
	if event is InputEventMouseMotion:
		mousePosition = event.position
		#Check if there is a start point
		if point1 != Vector2.ZERO:
			_point2 = mousePosition
			queue_redraw()
	
	#clear out the line when not clicking on another button
	if event is InputEventMouseButton && buttonClicked:
		buttonClicked = false
		point1 = Vector2.ZERO
		queue_redraw()

func _on_button_pressed():
	#set start at middle of button
	point1 = connectionButton.global_position + connectionButton.size/2
	_point2 = get_global_mouse_position()
	buttonClicked = true
