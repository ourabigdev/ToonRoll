extends Control

@onready var timer = $Timer
@onready var label = $Label

var total_time : int = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()
	pass

func _on_timer_timeout() -> void:
	total_time += 1
	var m = int(total_time / 60)
	var s = total_time - m * 60
	
	label.text = '%02d:%02d' % [m, s]
	
	
