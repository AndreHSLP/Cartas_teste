extends Panel


func _ready():
	rect_position=OS.window_size/2-rect_size/2
	

func _process(delta):
	rect_position=OS.window_size/2-rect_size/2


func _on_ButtonS_pressed():
	Gerenciador.mudarInfo($TextEdit.text)
	#Gerenciador.iniciarOnline()
	get_tree().change_scene("res://cenas/Jogo.tscn")
	pass


func _on_Conectar_pressed():
	Gerenciador.mudarInfo($TextEdit.text)
	Gerenciador.criarCliente()
	get_tree().change_scene("res://cenas/Jogo.tscn")


