extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Set animation blend position
	$AnimationTree.set("parameters/blend_position", Vector2(
		# lateral movement
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		# forwards/backwards movement
		Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")))
