extends Area2D

var velocidade = Vector2(0,0)
func _ready () :
	
	velocidade.x = randf_range(-400, -120)
	velocidade.y = randf_range(-60, 60)

func _process(delta):
	position += velocidade * delta

	if position.x < -100:
		queue_free ()
func explodir() :
	$CorpoInimigo.disabled = true # desabilite a
	$ImagemInimigo.play("explodir") # de play na
	await $ImagemInimigo.animation_finished # esp
	queue_free()

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		body. vidas -= 1
		explodir()
