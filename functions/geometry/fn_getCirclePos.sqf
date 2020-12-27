#include "msot_components.hpp"
/* ---------------------------------------------------------------------------------------------------------
Function: MSOT_geometry_fnc_getCirclePos

Description: Find a random Position in Circle without Water,House,Walls,Vehicle and Area check


Parameters: [Position,Radius,(Optional:Radius for big Objects)]

            Optional: Radius to find Places for big Objects without Houses,Walls,Vehicles and StaticWeapons

Returns:  Position
Examples:
          _pos = [(getMarkerPos "Town"),200] call MSOT_geometry_fnc_getCirclePos;

Author: Fry

------------------------------------------------------------------------------------------------------------- */
private ["_output","_co","_point","_onmap","_statics","_statics2","_statics3","_slope"];
params ["_position","_radius",["_big_radius",5],["_without_road",false]];
_output = [];
_co = 0;
while{count _output == 0 && _co < 150}do
{
 _point = _position getPos [_radius * sqrt random 1, random 360];
 If(count _point > 0)then
 {
   _onmap = [_point] call MFUNC(spawnhelp,isOnMap);
   _statics = (([_point,["Static","House","Tank","Car","StaticWeapon"],_big_radius] call MFUNC(spawnhelp,checkObjects)) < 1);
   _statics2 = (([_point,["TREE","SMALL TREE","BUSH","ROCK","ROCKS","FENCE"],_big_radius] call MFUNC(spawnhelp,checkTerrainObj)) < 1);
   _statics3 = If(_without_road)then{(count (_point nearRoads _big_radius) < 1)}else{true};
   _slope = [_point] call MFUNC(spawnhelp,getSlope);
   If(!(surfaceIsWater _point) && _onmap && _slope && {_statics} && {_statics2} && {_statics3})then
   {
     _output = _point;
   }else{_co = _co + 1;};
 };
 sleep 0.02
};
_output
