move_speed = 1;

tilemap = layer_tilemap_get_id("Tiles_Front")

hp = 10;
hp_total = hp;
damage = 1;
charge = 0;

level = 1;
xp = 0;
xp_require = 100;

function add_xp(xp_to_add)
{
	xp += xp_to_add;
	if (xp >= xp_require)
	{
		level ++;
		xp -= xp_require;
		xp_require += 1.25;
		
		hp_total += 5;
		hp = hp_total;
		damage += 0.8;
	}
}
