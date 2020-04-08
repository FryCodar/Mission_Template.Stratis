If(isMultiplayer)then{If(!hasInterface)exitWith{};};
#include "msot_components.hpp"

params ["_target", "_caller", "_actionId", "_arguments"];


private _player_hold_info = player getVariable [STRVAR_DO(holdaction_info),[]];

If(count _player_hold_info > 0)then
{
    private _h_forEach_idx = -1;
    private _h_info_field = [];
    private _h_doscript = "";
    private _info_idx = [2,_player_hold_info,_target] call MFUNC(system,getInfoArray);
    if(count _info_idx > 0)then
    {
      _h_forEach_idx = _info_idx # 0;
      _h_info_field = (_player_hold_info select _h_forEach_idx);
      _h_doscript = _h_info_field # 1;
    };
    _this spawn _h_doscript;
    [_target,_actionId] remoteExecCall ["BIS_fnc_holdActionRemove",0,false];
    sleep 1;
    _player_hold_info deleteAt _h_forEach_idx;
    player setVariable [STRVAR_DO(holdaction_info),_player_hold_info,false];
};
