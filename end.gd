extends Control

var score = 0


func _ready():
	$Label2.text = String(score)


func _on_Button_pressed():
	get_tree().set_pause(false)
	get_tree().change_scene("res://jeu.tscn")
