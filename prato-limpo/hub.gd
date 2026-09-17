extends CanvasLayer
@onready var voltar = preload("res://tela_de_inicio.tscn")
var is_paused = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pausar_pressed() -> void:
	is_paused = true
	get_tree().paused = true
	$'Menu_de_pause'.visible = true

func _on_continuar_pressed() -> void:
	is_paused = false
	get_tree().paused = false
	$'Menu_de_pause'.visible = false

func _on_sair_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://tela_de_inicio.tscn")
