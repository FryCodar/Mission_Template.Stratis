If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_creamission_fnc_createMission

Description:

              SERVER

Parameters: []

            POSITION  -  ARRAY with Position or ARRAY with 2 Position Arrays
                         1 Position array is the Main- and Spawnposition together to add the Vehicles in System
                         2 Position arrays the 1st is the Main position to add the Air Vehicles in System & the 2nd to spawn the Air Vehicles on Battlefield

            RADIUS    -  the Distance where the Vehicles will spawn around the Spawnpoint

            NUMBER AIR -  NUMBER of Air Vehicles

            (VEHICLE CLASSNAME) - define your own Class to spawn a Air Vehicle

            (BEHAVIORMODE) - Optional: default "CARELESS"

            (COMBATMODE)   - Optional : default "YELLOW"



Returns: []

Examples:
            _isStored = [(getMarkerPos "start"), 200,5] spawn MSOT_creating_fnc_setUnits;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private [];
params ["_idx"];

hint str _idx;
