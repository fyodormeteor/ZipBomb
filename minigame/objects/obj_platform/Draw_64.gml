
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
draw_set_color(c_black);
draw_roundrect(_x1, _y1, _x2, _y2, false);

// question
draw_set_color(c_gray);
draw_roundrect(_x1+_margin, _y1+_margin, _x1+_margin+_q_width, _y2-_margin, false);

// Answer 0 and 2

_x1 += _q_width + 2*_margin;
_x2 = _x1 + _a_width; 

	// Answer 0
	_y1 += _margin;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	var _c = c_green;
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left)) _c = c_lime;
	
	draw_set_color(_c);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	// Answer 1
	_y1 += _margin + _a_height;
	_y2 = _y1 + _a_height;
	
	var _mx = device_mouse_x_to_gui(0);
	var _my = device_mouse_y_to_gui(0);
	
	var _c = c_green;
	if (_mx > _x1 and _mx < _x2 and _my > _y1 and _my < _y2 and mouse_check_button_pressed(mb_left)) _c = c_lime;
	
	draw_set_color(_c);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
// Answer 1 and 3

_y1 = _y - _height/2;
_y2 = _y + _height/2;

_x1 += _a_width + _margin
_x2 = _x1 + _a_width; 

	// Answer 0
	_y1 += _margin;
	_y2 = _y1 + _a_height;
	
	draw_set_color(c_green);
	draw_roundrect(_x1, _y1, _x2, _y2, false);
	
	// Answer 1
	_y1 += _margin + _a_height;
	_y2 = _y1 + _a_height;
	
	draw_set_color(c_green);
	draw_roundrect(_x1, _y1, _x2, _y2, false);

