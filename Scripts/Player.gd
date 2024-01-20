extends CharacterBody2D
	
var move_speed = 460
var gravity = 1300
var jump_force = 800

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	var move_direction = int(Input.is_action_pressed("move_rigth")) -  int(Input.is_action_pressed("move_left")) 
	velocity.x = move_speed * move_direction
	
	if move_direction !=0:
		$texture.scale.x = move_direction
	
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y -= jump_force 
	
	
	
	move_and_slide()
