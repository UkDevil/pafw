// Corpse Manager refresh
// Run a periodic refresh of corpse manager-handled units.
//
// This is launched from init.sqf *if* corpseManagerMode is set to 1 in
// description.ext. Murk does its own check of the CM mode and acts
// accordingly.

if (isServer) then {
    [] spawn {
        {
            if (!isInRemainsCollector _x) then {
                ["CorpseManagerRefresh",
                 "Unit %1 is not in the Corpsemanager, adding it",
                 _x] call pa_fnc_bothlog;
                addToRemainsCollector [_x];
            };
        } foreach allUnits;
        sleep 20;
    };
};
// vim: sts=-1 ts=4 et sw=4
