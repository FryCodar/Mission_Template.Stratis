If(!hasInterface) exitWith {};
#include "msot_components.hpp"
params ["_idx"];


switch(_idx)do
{
  case 0:{
            {ctrlEnable [_x, false];}forEach [10044,10045,10047,10046];
            sliderSetRange [10047, 0, 100];
         };
  case 1:{
            {If(!(ctrlEnabled _x))then{ctrlEnable [_x, true];};}forEach [10044,10045];
            {If(ctrlEnabled _x)then{ctrlEnable [_x, false];};}forEach [10047,10046];
            ctrlSetText [10043, "Choose a travel method!"];
         };
  case 2:{
            If(!(ctrlEnabled 10046))then{ctrlEnable [10046, true];};
            If(ctrlEnabled 10047)then{ctrlEnable [10047, false];};
            missionNameSpace setVariable [STRVAR_DO(travel_idx),0,false];
            ctrlSetText [10043, "Normal Travel selected!"];
         };
  case 3:{
           {If(!(ctrlEnabled _x))then{ctrlEnable [_x, true];};}forEach [10047,10046];
           missionNameSpace setVariable [STRVAR_DO(travel_idx),1,false];
           ctrlSetText [10043, "HALO Jump selected!"];
         };
};
