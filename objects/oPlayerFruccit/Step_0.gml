//Player input

if (hascontrol = true)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A")); 
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check(ord("W"));
	key_jump2 = keyboard_check(vk_space) or keyboard_check(ord("W"));
}
else
{
	key_left = 0;
	key_right = 0;
	key_jump = 0;
	key_jump2 = 0;
}
//Calculation
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -6.5;
}

if (key_jump2) && (jp <=20)
	{
	 jp = jp + 1;
	 vsp = vsp - 0.2;
	}

if (!key_jump2)
{
	jp = 0;
}

//Collision Horizontal
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0; 
}
x = x + hsp;

//Collision Vertical
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0; 
}

y = y + vsp;

//Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1;
	else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0) sprite_index = sPlayerFruccit;
	else sprite_index = sPlayerR;
}

if (hsp !=0) image_xscale = sign(hsp)*2;