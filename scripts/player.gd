extends CharacterBody2D
@onready var musuh = $"../Enemy"
var speed = 200
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	#var velocity = Vect%GameManageror2()
	
	if Input.is_action_just_pressed("skill") && self.visible == true :
		self.visible = false
		if self.visible == false:
			musuh.set_physics_process(false);
			#musuh._on_timer_timeout(false);
	else :
		if Input.is_action_just_pressed("skill") && self.visible == false :
			self.visible = true
			musuh.set_physics_process(true);
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
		animated_sprite.flip_h = true # Menghadap ke kiri
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
		animated_sprite.flip_h = false # Menghadap ke kanan
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	#velocity = velocity.normalized()
	velocity = velocity * speed
	move_and_slide()
	velocity = velocity.normalized()
	for index in get_slide_collision_count():
		var collision := get_slide_collision(index)
		var body := collision.get_collider()
		#print("Collided with: ", body.name)
		if body.name == "Enemy" :
			#increase_speed(speed)
			get_tree().change_scene_to_file("res://GameOver.tscn")
	
func increase_speed(amount) :
	speed += 100;
	$AudioStreamPlayer2D.play()
func decrease_speed(amount):
	speed -= 100;
