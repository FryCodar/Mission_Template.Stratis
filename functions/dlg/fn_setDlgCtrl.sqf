If(!hasInterface) exitWith {};
#include "msot_components.hpp"

private _ctrl = {
                  private _chk = switch(true)do
                                 {
                                   case ((player getVariable ["ACE_isUnconscious", false])):{[true,true]};
                                   case (!alive player):{[true,true]};
                                   case (count (uiNamespace getVariable ['msot_dlg',[]]) == 0):{[true,false]};
                                 };
                  If(_chk # 0)then
                  {
                    If(_chk # 1)then{while{count (uiNamespace getVariable ['msot_dlg',[]]) > 0}do{closeDialog ((uiNamespace getVariable ['msot_dlg',[]]) # 0);};};
                    [(format["%1_msot_artillery_dlg",name player]),"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
                  };
                };

[(format["%1_msot_artillery_dlg",name player]),"onEachFrame",_ctrl] call BIS_fnc_addStackedEventHandler;
