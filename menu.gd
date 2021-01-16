extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	_on_Timer_timeout()
	_on_Timer2_timeout()
	_on_Timer3_timeout()
	_on_Timer4_timeout()
	_on_Timer5_timeout()
	_on_Timer6_timeout()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	$AnimatedSprite.frame = 0
	$AnimatedSprite.play("default")
	$AudioStreamPlayer.playing = false
	$AudioStreamPlayer.playing = true
	$Node/Timer.start(rand_range(2, 5))


func _on_Timer2_timeout():
	$AnimatedSprite2.play("default")
	$AnimatedSprite2.frame = 0
	$AudioStreamPlayer2.playing = false
	$AudioStreamPlayer2.playing = true
	$Node/Timer2.start(rand_range(2, 5))


func _on_Timer3_timeout():
	$AnimatedSprite3.play("default")
	$AnimatedSprite3.frame = 0
	$AudioStreamPlayer3.playing = false
	$AudioStreamPlayer3.playing = true
	$Node/Timer3.start(rand_range(2, 5))


func _on_Timer4_timeout():
	$AnimatedSprite4.play("default")
	$AnimatedSprite4.frame = 0
	$AudioStreamPlayer4.playing = false
	$AudioStreamPlayer4.playing = true
	$Node/Timer4.start(rand_range(2, 5))


func _on_Timer5_timeout():
	$AnimatedSprite5.play("default")
	$AnimatedSprite5.frame = 0
	$AudioStreamPlayer5.playing = false
	$AudioStreamPlayer5.playing = true
	$Node/Timer5.start(rand_range(2, 5))


func _on_Timer6_timeout():
	$AnimatedSprite6.play("default")
	$AnimatedSprite6.frame = 0
	$AudioStreamPlayer6.playing = false
	$AudioStreamPlayer6.playing = true
	$Node/Timer6.start(rand_range(2, 5))
