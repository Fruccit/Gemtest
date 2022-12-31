/// @desc Size variables and mode setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = display_get_gui_height() * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
