extends Node2D
@onready var menu = $CanvasLayer


var arroz = Sprite2D.new()
var feijao = Sprite2D.new()

var tem_carne = false
var tem_arroz = false
var tem_feijao = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_pega_carne_pressed() -> void:                  
	if $AnimatedSprite2D.visible == false:
		$AnimatedSprite2D.visible = true
		$AnimatedSprite2D.play("default")

func _on_pega_feijao_pressed() -> void:
	feijao.texture = load("res://icon.svg")
	feijao.position = ($Prato.position - Vector2(30, - 9))
	feijao.scale = Vector2(0.40, 0.20)
	feijao.modulate = Color(0, 0, 0, 1)
	add_child(feijao)
	tem_feijao = true

func _on_pega_arroz_pressed() -> void:
	arroz.texture = load("res://icon.svg")
	arroz.position = ($Prato.position - Vector2(30, 10))
	arroz.scale = Vector2(0.30, 0.25)
	arroz.modulate = Color(1, 1, 1, 1)
	add_child(arroz)
	tem_arroz = true


func _on_colocar_prato_pressed() -> void:
	$AnimatedSprite2D.position = ($Prato.position - Vector2(-30, 0))


func _on_entregar_prato_pressed() -> void:
	if tem_arroz == true:
		queue_free()
	if tem_carne == true:
		queue_free()
	if tem_feijao == true:
		queue_free()
