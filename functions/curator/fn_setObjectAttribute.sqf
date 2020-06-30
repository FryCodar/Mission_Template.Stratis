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
sleep 0.5;

If(_added_object isKindOf "AllVehicles")then
{

  private _grp_arr = [];
  {_grp_arr pushBackUnique (group _x);}forEach (crew _added_object);

  If((count _grp_arr) > 0)then
  {
    private _grp_name = (_grp_arr select 0);

    private _radius = 0;
    private _runpos =  (position _added_object);
    private _parents = [configFile >> "CfgVehicles" >> (typeOf _added_object),true] call BIS_fnc_returnParents;
    private _set_Patrol = switch(true)do
                          {
                            case ("StaticWeapon" in _parents):{0};
                            case ("Man" in _parents):{1};
                            case ("Tank" in _parents):{If("Artillery" in (getArray(configFile >> "CfgVehicles" >> (typeOf _added_object) >> "availableForSupportTypes")))then{2}else{3};};
                            case ("Car" in _parents):{4};
                            case ("Air" in _parents):{5};
                          };

     private _add_info = [_set_Patrol,_runpos,_grp_name,_added_object];
     missionNamespace setVariable [STRVAR_DO(group_control_resources),_add_info,false];
     sleep 0.5;
     If(count (uiNamespace getVariable ['msot_dlg',[]]) < 1 && ((getAssignedCuratorUnit _curator) isEqualTo player))then
     {
       createDialog "MSOT_ZEUS_PATROL";
     };
  };
};
