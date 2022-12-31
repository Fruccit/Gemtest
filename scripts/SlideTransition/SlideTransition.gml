// W wersji v2.3.0 zmieniono zasoby skryptu. Więcej informacji można znaleźć pod adresem
// https://help.yoyogames.com/hc/en-us/articles/360005277377

/// @desc SlideTransition(mode,targetroom)
/// @arg Mode sets transtion mode between NEXT, RESTART, GOTO.
/// @arg Target sets target room when using GOTO mode.
function SlideTransition(argument0,argument1){
	with (oTransition)
	{
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
	}
}

