extends Control

@onready var fader := $Fader
@onready var titleAndButtons := $"Title and Buttons"
@onready var instructions := $Instructions

func _ready():
	fader.visible = false
	titleAndButtons.visible = true
	instructions.visible = false
	titleAndButtons.instruction_pressed.connect(_on_instructions_pressed)
	titleAndButtons.play_pressed.connect(_on_play_pressed)
	instructions.back_pressed.connect(_on_back_pressed)

func _on_instructions_pressed():
	titleAndButtons.visible = false
	instructions.visible = true
	# Stay on Main Menu and show Instructions


func _on_play_pressed():
	print("Play was pressed. Have fun.")
	# Go to play.
	pass # Replace with function body.

func _on_back_pressed():
	titleAndButtons.visible = true
	instructions.visible = false
