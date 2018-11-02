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
sleep 2;
private _owner_id = clientOwner;
If((groupOwner _added_group) isEqualTo _owner_id)then{
[_added_group] spawn MFUNC(system,setUnitSkill);
};
