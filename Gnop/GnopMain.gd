extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.points = 0
	$AudioPlayer.play()


func _process(delta):
	$PointLabel.text = str(GlobalVariables.points)


func _on_OutZone_body_entered(body: Node):
	if body.is_in_group("ball"):
		print("Game Over")
		$Ball.hide()
		$BatLeft.hide()
		$BatRight.hide()
		$GameOverHUD.show()
		#get_tree().change_scene("res://Menu.tscn")  # change for game over screen
