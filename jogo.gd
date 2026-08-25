extends Node2D

@export var Vidas_node:Label
@export var Pontos_node:Label
@export var player:CharacterBody2D

var pontos = 0
func _process(delta: float) -> void:
	if player.vidas == 0 and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://menu.tscn")
func atualizar_hud():
	if player.vidas > 0:
		Vidas_node.text = "Vidas: " + str(player.vidas)
		Pontos_node. text = "Pontos: " + str(pontos)
	else:
		$"fim do jogo".visible = true
		

func _ready() -> void:
	pass # Replace with function body.
