extends Node2D

func _process(delta):
	if $bonome.position.x == -500:
		$AnimationPlayer.play("débarque_dans_le_game")
	if Input.is_action_just_pressed("pay") and $bonome.position.x == 1000:
		$AnimationPlayer.play("se_casse")
