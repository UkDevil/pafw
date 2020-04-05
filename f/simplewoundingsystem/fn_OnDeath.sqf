// F3 - SimpleWoundingSystem
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ==========================================================================
// this just makes sure that the wounded people die and ragdoll after a while.
_unit = _this select 0;
if(_unit getVariable ["f_wound_down",false]) then
{
	[[_unit,false], "f_fnc_SetDowned", true] spawn BIS_fnc_MP;
};

// vim: tw=72 sts=-1 ts=4 et sw=4
