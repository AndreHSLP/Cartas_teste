extends Node2D

var podeMudar=true
var infoPessoal
var mao={"Vermelho":[],"Amarelo":[],"Verde":[],"Azul":[],"Especial":[]}

var dono =false

func _ready():
	#print(infoP)
	pass
	
	
func _physics_process(delta):
	#$TextureRect.modulate= Color( randf(),randf(),randf(), 1 )
	pass
	
func Info(Info):
	infoPessoal=Info
	$Button.text=Info.name


func _on_Button_pressed():
	print("AINDA")
	if false:#dono
		sair()
		rpc("sair")

	print(infoPessoal)
	pass
	
remote func sair():
	queue_free()
	pass


func _on_Button2_pressed():
	mudar()
	pass # Replace with function body.

func mudar():
	if podeMudar:
		$TextureRect.modulate= Color( randf(),randf(),randf(), 1 )
		podeMudar=false
		yield(get_tree().create_timer(0.0),"timeout")
		podeMudar=true

func addCarta(cor,n):
	mao[cor].append(n)
	#print(cor,":",mao[cor])

func removeCarta(cor,n):
	if mao[cor].find(n)==-1:
		print("N:",n," Cor:",cor)
		print("Não tem essa carta no baralho")
		return
	var CartaIndex=mao[cor].find(n)
	mao[cor].remove(CartaIndex)
