extends Control

var optionsMenu : ColorRect
var soundNumber : Label
var newGameButton : Button
var continueButton : Button
var optionsButton : Button
var exitButton : Button

func _ready():
	newGameButton = $newGame
	continueButton = $continue
	optionsButton = $options
	exitButton = $exit
	optionsMenu = $optionsMenu
	soundNumber = $optionsMenu/HSlider/soundNumber
	


func _on_exit_pressed():
	get_tree().quit()


func _on_options_pressed():
	newGameButton.visible = false
	continueButton.visible = false
	optionsButton.visible = false
	exitButton.visible = false
	optionsMenu.visible = true
	


func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value + 100)
	soundNumber.text = str(value) 



func _on_back_pressed():
	newGameButton.visible = true
	continueButton.visible = true
	optionsButton.visible = true
	exitButton.visible = true
	optionsMenu.visible = false


func _on_fullscreen_toggled(toggled_on):
	if toggled_on:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN,0)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED,0)
