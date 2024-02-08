extends Control

var chestPurple : Sprite2D
var chestClosed : Sprite2D
var chestOpened : Sprite2D
var ButtonChest : Button
var Sling : AudioStreamPlayer
var purpleFade : ColorRect
var fadeTimer : Timer

func _ready():
	chestPurple = $ChestPurple
	chestClosed = $Chestclosed
	chestOpened = $Chestopened
	ButtonChest = $ButtonChest
	Sling = $ChestPurple/AudioStreamSling
	purpleFade = $ColorRect
	fadeTimer = $ButtonChest/Timer
	

func _process(delta):
	
	pass


func _on_button_chest_pressed():
	chestClosed.visible = false
	chestPurple.visible = true
	ButtonChest.visible = false
	purpleFade.visible = true
	Sling.play()
	fadeTimer.start()
	


func _on_timer_timeout():
	purpleFade.visible = false
