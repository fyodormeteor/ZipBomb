
if (timelefttojump != 0)
{
	x += (target_x-last_x)/timetojump;
	y += (target_y-last_y)/timetojump;
	
	if (timelefttojump <= timetojump/2)
	{
		parabola_height += 3;
	} else parabola_height -= 3;
	
	timelefttojump--;
	
	if (timelefttojump = 0)
	{
		current_question.land();
		image_index = 2;
		alarm[0] = 15;
	}
}

if keyboard_check_pressed(vk_left) current_question.shake();
if keyboard_check_pressed(ord("0")) jump_to(0);
if keyboard_check_pressed(ord("1")) jump_to(1);
if keyboard_check_pressed(ord("2")) jump_to(2);
if keyboard_check_pressed(ord("3")) jump_to(3);
if keyboard_check_pressed(ord("4")) jump_to(4);
if keyboard_check_pressed(ord("5")) jump_to(5);

