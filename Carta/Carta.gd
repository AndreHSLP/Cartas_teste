extends Panel

var emcima = false

var nome
var efeito
var dono
var numero
var cor
var local

func _ready():
	$Label.text=name
	$ImgCarta/Img.animation=cor
	$ImgCarta/Img.frame=numero


	
func _physics_process(delta):
	if $Button.is_hovered() and !emcima:
		$AnimationPlayer.play("Movimento")
		emcima=true
	if !$Button.is_hovered() and emcima:
			$AnimationPlayer.play_backwards("Movimento")
			emcima=false


func _on_Button_pressed():
	if local!="Pilha":
		SistemaJogo.jogarNoCentro(cor,numero)
		dono.removeCarta(cor,numero)
		queue_free()
	pass # Replace with function body.


# Carta aleatoria
#func Aleatorio():
#	$ImgCarta/ImgCarta2.modulate=Color(randf(),randf(),randf())
#	$ImgCarta/AnimatedSprite.frame=randi()%56
#	print(name)
