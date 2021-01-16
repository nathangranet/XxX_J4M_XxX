extends Node2D

var new = true
var buy = 0
var don = 0

func _ready():
	randomize()

func _process(delta):
	if $bonome.position.x == 1000 and new == true:
		new = false
		var buy = rand_range(1, 200)
		buy = int(buy * 100) / 100.00
		$acheter.text = String(buy)
		don = rand_range(buy, buy + 30)
		don = int(don * 100) / 100.00
		$don.text = String(don)
	if $bonome.position.x == -500:
		new = true
		$AnimationPlayer.play("débarque_dans_le_game")
	if Input.is_action_just_pressed("pay") and $bonome.position.x == 1000:
		$AnimationPlayer.play("se_casse")
