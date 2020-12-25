extends Node




var noBaralho
var players
var PilhaCentro=[]
var caminhoPilha

const cartaInstancia=preload("res://Carta/Carta.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	noBaralho=baralhoNormal()
	pass # Replace with function body.


func baralhoNormal():
	var Ver=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,11,12]
	var Am=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,11,12]
	var Ve=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,11,12]
	var Az=[0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,11,12]
	var Esp=[0,0,0,0,1,1,1,1]
	var Baralho={"Vermelho":Ve,"Amarelo":Am,"Verde":Ve,"Azul":Az,"Especial":Esp}
	#print(Baralho.get("Vermelho").find("R"))
	#print(Baralho.get("Vermelho")[19])
	return Baralho


func darCartaAleatoria(player):
	var ChavesIndex:Array=noBaralho.keys()
	if ChavesIndex.size()==0:
		print("Acabou Baralho")
		return
	var cor=ChavesIndex[randi()%ChavesIndex.size()-1]
	var nIndex=noBaralho[cor].size()
	if nIndex==0:
		#print("Acabou a cor:",cor)
		print(noBaralho[cor])
		noBaralho.erase(cor)
		darCartaAleatoria(player)
		return
	var n=noBaralho[cor][randi()%nIndex-1]
	darCarta(n,cor,player)
	

func darCarta(n,cor,player):
	if noBaralho.get(cor).find(n)==-1:
		print("N:",n," Cor:",cor)
		print("Não tem essa carta no baralho")
		return
		
	var CartaIndex=noBaralho.get(cor).find(n)
	noBaralho.get(cor).remove(CartaIndex)
	
	for p in players:
		if p.infoP.name==player:
			var carta=cartaInstancia.instance()
			carta.numero=n
			carta.cor=cor
			carta.dono=p
			p.addCarta(cor,n)
			p.get_node("Mao/Cartas").add_child(carta)
			
func jogarNoCentro(cor,n):
	PilhaCentro.append([n,cor])
	var carta=cartaInstancia.instance()
	carta.numero=n
	carta.cor=cor
	carta.local="Pilha"
	caminhoPilha.add_child(carta)
