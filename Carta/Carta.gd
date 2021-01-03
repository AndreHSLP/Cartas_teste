extends Panel

var emCima = false

var cor
var dono
var efeito
var local
var nome
var numero



func _ready():
	$Label.text=name
	$ImgCarta/Img.animation=cor
	$ImgCarta/Img.frame=numero
	$Label.text=str(numero)+cor


	
func _physics_process(delta):
	if $Button.is_hovered() and !emCima:
		$AnimationPlayer.play("Movimento")
		emCima=true
	if !$Button.is_hovered() and emCima:
			$AnimationPlayer.play_backwards("Movimento")
			emCima=false


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
