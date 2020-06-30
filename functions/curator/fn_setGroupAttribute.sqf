#include "msot_components.hpp"
/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_curator_fnc_setGroupAttribute

Description: Set attributes to Group (Skill / Ownership)

Parameters:

Returns: Nothing

Examples:
            MSOT_curator_fnc_setGroupAttribute

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
params["_curator","_added_group"];

If(count (uiNamespace getVariable ['msot_dlg',[]]) < 1 && ((getAssignedCuratorUnit _curator) isEqualTo player))then
{

  private _leader = (leader _added_group);
  private _runpos = position _leader;


  private _add_info = [1,_runpos,_added_group,_leader];
  missionNamespace setVariable [STRVAR_DO(group_control_resources),_add_info,false];

  sleep 0.5;
  createDialog "MSOT_ZEUS_PATROL";
};
