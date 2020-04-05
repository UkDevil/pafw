// Loop that disables thermal view on everything

[] spawn {
	while {true} do
	{
		{
			if ( !( _x getVariable ["TIEquipmentDisabled", false] ) )	then {
				_x setVariable ["TIEquipmentDisabled", true];
				_x disableTIEquipment true;
			};
		} forEach vehicles;
		sleep 5;
	};
};

// vim: tw=72 sts=-1 ts=4 et sw=4
