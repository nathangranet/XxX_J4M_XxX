extends Node2D

var new = true
var buy = 0
var don = 0
var rendu = 0
var score = 0

func _ready():
	randomize()

func _process(delta):
	if Input.is_action_just_pressed("1cent"):
		rendu += 0.01
	if Input.is_action_just_pressed("5cent"):
		rendu += 0.05
	if Input.is_action_just_pressed("10cent"):
		rendu += 0.10
	if Input.is_action_just_pressed("50cent"):
		rendu += 0.50
	if Input.is_action_just_pressed("1dol"):
		rendu += 1
	if Input.is_action_just_pressed("2dol"):
		rendu += 2
	if Input.is_action_just_pressed("10dol"):
		rendu += 10
	if Input.is_action_just_pressed("50dol"):
		rendu += 50
	if Input.is_action_just_pressed("100dol"):
		rendu += 100
	if $bonome.position.x == 1000 and new == true:
		new = false
		buy = rand_range(1, 200)
		buy = int(buy * 100) / 100.00
		$acheter.text = String(buy)
		don = rand_range(buy, buy + 30)
		don = int(don * 100) / 100.00
		$don.text = String(don)
	if $bonome.position.x == -500:
		new = true
		$AnimationPlayer.play("débarque_dans_le_game")
	if Input.is_action_just_pressed("pay") and $bonome.position.x == 1000:
		if rendu >= (don - buy):
			score += 10 - (rendu - (don-buy))
			$Particles2D.emitting = true
			$Particles2D2.emitting = true
		else:
			score -= 10
		print (rendu)
		print (don - buy)
		print (buy)
		rendu = 0
		$score2.text = String(score)
		$AnimationPlayer.play("se_casse")
	$rendu.text = String(rendu)
