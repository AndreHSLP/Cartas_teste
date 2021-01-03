extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var players
const cartaTeste=preload("res://Carta/Carta.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func atualizarLista(Players):
	players=Players
	print(players[0].name)


func _on_AddCarta_pressed():
	#SistemaJogo.darCarta(1,"Vermelho","A")
	SistemaJogo.darCartaAleatoria(players[$AddCarta/PlayerID.text.to_int()].infoP.name)
	#print(players[$AddCarta/PlayerID.text.to_int()].infoP.name)
	
remote func addCartaEmT(nome):
	var cart=cartaTeste.instance()
	for p in players:
#		print(p.infoP)
		if p.infoP.name==nome:
		 p.get_node("mao/cartas").add_child(cart)
	#print(player[int($AddCarta/PlayerID.text)].get_node("mao/cartas"))

