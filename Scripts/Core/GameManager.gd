extends Node

signal gained_coins(int)

var coins : int
var current_checkpoint : Checkpoint
var player : Player

func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position
		
func gain_coins(coins_ganed:int):
	coins += coins_ganed
	emit_signal("gained_coins", coins_ganed)
