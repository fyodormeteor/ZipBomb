current_question = global.qid[0];

target_x = current_question.x;
target_y = current_question.y;

last_x = current_question.x;
last_y = current_question.y;

parabola_height = 0;

timetojump = 45;

timelefttojump = 0;

jump_to_next = undefined;

question_ready = true;


jump_to = function(_q)
{
	jump_to_next = _q;
	image_index = 2;
	alarm[1] = 10;
}

jump_to_alarm = function(_q)
{
	parabola_height = 0;
	
	current_question = global.qid[_q];
	target_x = current_question.x;
	target_y = current_question.y;
	
	last_x = x;
	last_y = y;
	
	timelefttojump = timetojump;
}