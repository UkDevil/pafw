// F3 - SimpleWoundingSystem
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ==========================================================================
_veh = _this select 0;
_ret = false;
{
	if(_x getVariable ["f_wound_down",false]) then
	{
		_ret = true;
	};
}	foreach crew _veh;
_ret

// vim: tw=72 sts=-1 ts=4 et sw=4
