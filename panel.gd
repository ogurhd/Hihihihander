extends Panel
var jokes: Array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	const SAVE_PATH = "user://data.json"
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	var content = file.get_as_text()
	
	var parsed = JSON.parse_string(content)
	if parsed is Array:
		jokes = parsed
	else:
		$joke.text = "Ошибка в формате JSON!"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_next_joke_bt_button_down() -> void:
	var score = $Label.a
	$joke.text = str(jokes.pick_random()," ", $Label.a)
	
