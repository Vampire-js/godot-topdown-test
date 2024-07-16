extends Sprite2D

var max_bullets = 100

@onready var gun = $"."
@onready var bullets = $"../Camera2D/BulletsLeft/Label"

func _process(delta):
	bullets.text = str(max_bullets)

func _input(event):
	if event is InputEventMouseMotion:
		rotation = get_parent().get_local_mouse_position().angle()
		
	if event is InputEventKey:
		if event.keycode == 32:
			if max_bullets != 0:
				max_bullets -= 1
				var bullet = preload("res://bullet.tscn").instantiate()
				print(bullet.position)
				bullet.scale.x = 0.2
				bullet.scale.y = 0.2
				bullet.position = position
				bullet.apply_impulse((Vector2(position.x + 10 , position.y).rotated(rotation)).normalized()*2000 , Vector2())
				gun.add_child(bullet)

