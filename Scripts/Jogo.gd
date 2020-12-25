extends Control


func _ready():
	Gerenciador.caminhoJogo=get_node("Player")
	Gerenciador.criarPlayer()
	addPlayer()




func addPlayer():
	$teste.atualizarLista($Player.get_children())
	SistemaJogo.players=$Player.get_children()
