If(!hasInterface) exitWith {};
#include "msot_components.hpp"
private ["_holder","_add_txt","_control"];
params ["_idx","_info"];
disableSerialization;
//private _control = ((findDisplay 36643) displayCtrl 10024);
switch(_idx)do
{
  case 0:{
            {ctrlEnable [_x, false];}forEach [10022,10025,10026,10028,10031,10032,10034,10039,10040];
            sleep 0.1;
            If(missionNamespace getVariable[STRVAR_DO(available_artillery),false] && {(count (missionNamespace getVariable[STRVAR_DO(artillery_resources),[]])) > 0})then
            {
              ctrlEnable [10022, true];
              _holder = missionNamespace getVariable[STRVAR_DO(artillery_resources),[]];
              {
                _add_txt = format[(getText(configfile >> "CfgVehicles" >> (typeOf _x) >> "displayName")) + " %1",(_forEachIndex + 1)];
                lbAdd [10024,_add_txt];
                _pic = getText(configfile >> "CfgVehicles" >> (typeOf _x) >> "picture");
                If(count _pic > 0)then{lbSetPicture [10024,((lbSize 10024) - 1), _pic];lbSetPictureColor [10024,((lbSize 10024) - 1), [1, 0, 0, 1]];};
              }forEach _holder;
            }else{ctrlSetText [10029, "No Artillery Units available!"];};
         };
  case 1:{
            _control = ((findDisplay 36643) displayCtrl 10024);
            _holder = missionNamespace getVariable[STRVAR_DO(artillery_resources),[]];
            _type = [(lbText [10024, _info]),_holder] call MFUNC(dlg,getUnitTypeName);
            If(count _type > 0)then
            {
              If(count (lbSelection _control) > 1)then
              {
                If(!((_type select 0) isEqualTo MSOT_CHECKARTILLERY_TYPE))then
                {
                  ctrlEnable [10025, false];_control lbSetSelected [_info,false];
                  ctrlSetText [10029, "Select the identical Artillery Types please!"];
                }else{If(!(ctrlEnabled 10025))then{ctrlEnable [10025, true];};
                      ctrlSetText [10029, ""];
                     };
              }else{
                      If(lbSize 10028 < 1)then
                      {
                        MSOT_CHECKARTILLERY_TYPE = (_type select 0);
                        ctrlEnable [10025, true];ctrlSetText [10029, ""];
                      }else{
                             If(!((_type select 0) isEqualTo MSOT_CHECKARTILLERY_TYPE))then
                             {
                               ctrlEnable [10025, false];_control lbSetSelected [_info,false];
                               ctrlSetText [10029, "To Add select the identical Artillery Types please!"];
                             }else{If(!(ctrlEnabled 10025))then{ctrlEnable [10025, true];};
                                   ctrlSetText [10029, ""];}
                           };
                   };
            };
         };
  case 2:{

         };
};
