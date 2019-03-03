#include "msot_components.hpp"
/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_curator_fnc_setObjectAttribute

Description: Set attributes to Object (Skill / Ownership)

Parameters:

Returns: Nothing

Examples:
            MSOT_curator_fnc_setObjectAttribute

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
params["_curator","_added_object"];
sleep (1 + (random 1));
If(_added_object isKindOf "AllVehicles")then
{
  hint str _added_object;
/*
    private _vec_arr = [];
{private _vec = (objectParent _x);if(!(isNull _vec))then{_vec_arr pushBackUnique _vec;};}forEach units _added_group;
If((count _vec_arr) > 0)then
{
  If(count _vec_arr < 2)then
  {
    private _radius = 0;
    private _runpos =  (_vec_arr select 0);
    private _vec_name = (_vec_arr select 0);
    private _parents = [configFile >> "CfgVehicles" >> (typeOf _vec_name),true] call BIS_fnc_returnParents;
    private _set_Patrol = switch(true)do
                          {
                            case ("StaticWeapon" in _parents):{2};
                            case ("Tank" in _parents):{If("Artillery" in (getArray(configFile >> "CfgVehicles" >> (typeOf _x) >> "availableForSupportTypes")))then{2}else{0};};
                            case ("Car" in _parents):{0};
                            case ("Air" in _parents):{1};
                          };
    _added_group setBehaviour "COMBAT";
    _added_group setCombatMode (selectRandom ["RED","YELLOW","RED","YELLOW","RED","RED","YELLOW","RED","YELLOW","RED"]);
    switch(_set_Patrol)do
    {
      case 0:{ _radius = (round(random 250));
               If(_radius < 150)then{_radius = 150;};
               [_added_group,_runpos,_radius] call BFUNC(taskPatrol);
             };
      case 1:{
              _added_group setCombatMode "YELLOW";
               _radius = (round(random 1500));
               If(_radius < 900)then{_radius = 900;};
               [_added_group,_runpos,_radius] call BFUNC(taskPatrol);
               _added_group setSpeedMode "NORMAL";
             };
    };

  };
};
*/
};
