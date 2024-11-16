if (obj_player.current_question != id) exit;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_sigma);

var _c_menu = c_black;
var _c_question = c_gray;
var _c_answer = c_green;
var _c_text = c_white;


var _width = 800;
var _height = 250;
var _margin = 20;

var _y = 150;

var _x1 = SCREEN_W/2 - _width/2;
var _x2 = SCREEN_W/2 + _width/2;
var _y1 = _y - _height/2;
var _y2 = _y + _height/2;

var _q_width = 300;

var _a_width = (_width - 4*_margin - _q_width) / 2;

var _a_height = (_height - 3*_margin)/2;

// draw menu
draw_set_color(_c_menu);
draw_roundrect(_x1, _y1, _x2, _y2, false);

// question
draw_set_color(_c_question);
draw_roundrect(_x1+_margin, _y1+_margin, _x1+_margin+_q_width, _y2-_margin, false);

draw_set_color(_c_text);
var _xt = (_x1+_margin+_x1+_margin+_q_width)/2;
var _yt = (_y1+_margin+_y2-_margin)/2;
draw_text(_xt,_yt,text_question);

// Answer 0 and 2

_x1 += _q_width + 2*_margin;
_x2 = _x1 + _a_width; 

	// Answer 0
	_y1 += _margin;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left))
	{
		
	}
	
	draw_set_color(_c_answer);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	draw_set_color(_c_text);
	var _xt = (_x1+_x2)/2;
	var _yt = (_y1+_y2)/2;
	draw_text(_xt,_yt,text_answer0);
	
	// Answer 2
	_y1 += _margin + _a_height;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left))
	{
		
	}
	
	draw_set_color(_c_answer);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	draw_set_color(_c_text);
	var _xt = (_x1+_x2)/2;
	var _yt = (_y1+_y2)/2;
	draw_text(_xt,_yt,text_answer2);
	
// Answer 1 and 3

_y1 = _y - _height/2;
_y2 = _y + _height/2;

_x1 += _a_width + _margin
_x2 = _x1 + _a_width; 

	// Answer 1
	_y1 += _margin;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left))
	{
		
	}
	
	draw_set_color(_c_answer);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	draw_set_color(_c_text);
	var _xt = (_x1+_x2)/2;
	var _yt = (_y1+_y2)/2;
	draw_text(_xt,_yt,text_answer1);
	
	// Answer 3
	_y1 += _margin + _a_height;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left))
	{
		
	}
	
	draw_set_color(_c_answer);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	draw_set_color(_c_text);
	var _xt = (_x1+_x2)/2;
	var _yt = (_y1+_y2)/2;
	draw_text(_xt,_yt,text_answer3);

