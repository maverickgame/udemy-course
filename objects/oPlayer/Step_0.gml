/// @description Insert description here
// You can write your code in this editor

var left	= keyboard_check(vk_left);
var right	= keyboard_check(vk_right);
var up		= keyboard_check(vk_up);
var down	= keyboard_check(vk_down);


//calculate movement
hsp += (right - left) * walk_spd;

//drag
hsp = lerp(hsp,0,drag);


//stop (because your drag might drag too long
if abs(hsp) <= 0.1 hsp = 0;   //abs(hsp) will ignore negative value

//face correct way
if hsp != 0 facing = sign(hsp);  //sign will give either 1 or 0

//limit speed
hsp = min(abs(hsp), max_hsp) * facing;

//apply movement
x += hsp;
y += vsp;

//apply animations
if hsp !=0
{
	image_xscale = facing;
	sprite_index = s_player_walk;
}
else
{
	sprite_index = s_player_idle;
}
image_xscale = facing;
