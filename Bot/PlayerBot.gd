extends Node2D


var mao


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func addCarta(cor,n):
	mao[cor].append(n)
	print(cor,":",mao[cor])


func removeCarta(n,cor):
	if mao[cor].find(n)==-1:
		print("N:",n," Cor:",cor)
		print("Não tem essa carta na mao do player")
		return
		
	var CartaIndex=mao[cor].find(n)
	mao[cor].remove(CartaIndex)
