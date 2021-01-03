extends Node

var caminhoJogo : Node
onready var playerScene = preload("res://player/Player.tscn")
#############Multiplayer Teste################
#const PORT = 27015
#const MAX_PLAYERS = 5
#export var SERVER_IP : String = "localhost"
############Multiplayer Teste################
#func _ready():
#	pass

############Multiplayer Teste################
#func iniciarOnline():
#	criarServer()
#func conectarSinais():
#	get_tree().connect("network_peer_connected", self, "_player_connected")
#	get_tree().connect("network_peer_disconnected", self, "_player_disconnected")
#	get_tree().connect("connected_to_server", self, "_connected_ok")
#	get_tree().connect("connection_failed", self, "_connected_fail")
#	get_tree().connect("server_disconnected", self, "_server_disconnected")
#	pass
############Multiplayer Teste################


#lista de Players
var playerInfo = {}
# Informação de player
var myInfo = {name = "Nome", favorite_color = Color8(255, 0, 255) }



###### MULTIPLAYER EM TESTE ##########
#func _player_connected(id):
#	# Called on both clients and server when a peer connects. Send my info to it.
#	rpc_id(id, "register_player", my_info)
#
#func _player_disconnected(id):
#	print("Saiu")
#
#	player_info.erase(id) # Erase player from info.
#
#func _connected_ok():
#	pass # Only called on clients, not server. Will go unused; not useful here.
#
#func _server_disconnected():
#	print("server saiu")
#	pass # Server kicked us; show error and abort.
#
#func _connected_fail():
#	print("erro")
#	pass # Could not even connect to server; abort.
#
#remote func register_player(info):
#	# Get the id of the RPC sender.
#	var id = get_tree().get_rpc_sender_id()
#	# Store the info
#	player_info[id] = info
#	criaOutros(info,id)
#
#
#
#func criarServer():
#	conectarSinais()
#	var peer = NetworkedMultiplayerENet.new()
#	peer.create_server(PORT, MAX_PLAYERS)
#	get_tree().network_peer = peer
#	player_info[get_tree().get_network_unique_id()] = my_info
#
#
#func criarCliente():
#	conectarSinais()
#	var peer = NetworkedMultiplayerENet.new()
#	peer.create_client(SERVER_IP, PORT)
#	get_tree().network_peer = peer
#	#id = get_tree().get_network_unique_id()
#
#
func mudarInfo(Nome):
	myInfo.name=Nome

func criarPlayer():
	var id=get_tree().get_network_unique_id()
	var player=playerScene.instance()
	player.Info(myInfo)
	player.position=Vector2(100,300)
#	player.set_network_master(id) #Função Multiplayer player
	caminhoJogo.add_child(player)
	player.name =String(id)
	player.dono=true

#var testAlgo=400
#func criaOutros(info,idP):
#	var player=player_scene.instance()
#	player.Info(info)
#	player.position=Vector2(100,testAlgo)
#	testAlgo+=100
#	player.set_network_master(idP)
#	player.set_name(String(idP))
#	caminhoJogo.add_child(player)
#	player.dono=false
#	pass
#
#remote func sair():
#
#	pass
###### MULTIPLAYER TESTE #################
