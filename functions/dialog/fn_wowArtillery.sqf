If(!hasInterface) exitWith {};
#include "msot_components.hpp"
params ["_idx"];
disableSerialization;
private _control = ((findDisplay 36643) displayCtrl 10024);
switch(_idx)do
{
  case 0:{
            {ctrlEnable [_x, false];}forEach [10025,10026,10028,10031,10032,10034,10039,10040];
         };
};
