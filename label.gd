extends Label
#Создаём переменную с помощью var и чёткой типизацией
var a:int = 0

func _ready() -> void:
	pass # Replace with function body.


#Выводим переменную a
func _process(delta: float) -> void:
	text = str("Оценка: ",a,"/5")

#Для этого надо через сигналы прикрепить нажимания к этому модулю
func _on_button_button_down() -> void: 
	a = 1

func _on_button_2_button_down() -> void:
	a = 2

func _on_button_3_button_down() -> void:
	a = 3

func _on_button_4_button_down() -> void:
	a = 4

func _on_button_5_button_down() -> void:
	a = 5


func _on_next_joke_bt_button_down() -> void:
	a = 0
