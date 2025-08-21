extends Node2D

@onready var tilemap: TileMap = $TileMap
@onready var cam: Camera2D = $Player/Camera2D

func _ready():
	var r = tilemap.get_used_rect()
	var s = tilemap.tile_set.tile_size
	
	cam.limit_left   = r.position.x * s.x
	cam.limit_top    = r.position.y * s.y
	cam.limit_right  = (r.position.x + r.size.x) * s.x
	cam.limit_bottom = (r.position.y + r.size.y) * s.y
