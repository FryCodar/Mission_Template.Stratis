If(!hasInterface) exitWith {};
#include "msot_components.hpp"
private ["_control","_spec_number"];
params ["_gc_idx",["_gc_spec",-1]];
disableSerialization;
private _group_info = missionNamespace getVariable [STRVAR_DO(group_control_resources),[]];
_group_info params [["_i_idx",-1],["_grp_pos",[]],["_grp_name",grpNull],["_grp_vec",objNull]];
switch(_gc_idx)do
{
  case 0:{
           If(count _group_info > 0)then
           {
             switch(_i_idx)do
             {
              // StaticWeapons
              case 0:{
                      {ctrlEnable [_x, false];}forEach [11008,11009,11014,11016,11020,11021];
                      {ctrlShow [_x, false]}forEach [11006,11007,11018,11019];
                      sliderSetPosition [11020, 0];
                      ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
                     };
              // Man
              case 1:{
                      {ctrlEnable [_x, false];}forEach [11008,11014,11016,11020];
                      {ctrlShow [_x, false]}forEach [11018,11019];
                      sliderSetRange [11008, 2, 20];
                      sliderSetSpeed [11008, 1,10];
                      sliderSetPosition [11008, 2];
                      ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 10))])];
                      sliderSetPosition [11020, 0];
                      ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
                     };
              // Artillerie
              case 2:{
                       {ctrlEnable [_x, false];}forEach [11008,11014,11016,11020];
                       sliderSetRange [11008, 5, 30];
                       sliderSetSpeed [11008, 1,10];
                       sliderSetPosition [11008, 5];
                       ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 10))])];
                       sliderSetRange [11020, 0, 10];
                       sliderSetSpeed [11020, 1,1];
                       sliderSetPosition [11020, 0];
                       ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
                     };
              //Tanks
              case 3:{
                      {ctrlEnable [_x, false];}forEach [11008,11014,11016,11020];
                      sliderSetRange [11008, 5, 30];
                      sliderSetSpeed [11008, 1,10];
                      sliderSetPosition [11008, 5];
                      ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 10))])];
                      sliderSetRange [11020, 0, 10];
                      sliderSetSpeed [11020, 1,1];
                      sliderSetPosition [11020, 100];
                      ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
                    };
              //Cars
              case 4:{
                       {ctrlEnable [_x, false];}forEach [11008,11014,11016,11020];
                       sliderSetRange [11008, 5, 30];
                       sliderSetSpeed [11008, 1,10];
                       sliderSetPosition [11008, 5];
                       ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 10))])];
                       sliderSetRange [11020, 0, 10];
                       sliderSetSpeed [11020, 1,1];
                       sliderSetPosition [11020, 100];
                       ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];

                     };
              //Air
              case 5:{
                      {ctrlEnable [_x, false];}forEach [11008,11014,11016,11020];
                      sliderSetRange [11008, 10, 50];
                      sliderSetSpeed [11008, 1,5];
                      sliderSetPosition [11008, 10];
                      ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 100))])];
                      sliderSetRange [11020, 0, 10];
                      sliderSetSpeed [11020, 1,1];
                      sliderSetPosition [11020, 10];
                      ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
                     };
             };
             {lbAdd [11014,_x];}forEach ["CARELESS","SAFE","AWARE","COMBAT","STEALTH"];
             If(_i_idx == 5)then{lbSetCurSel [11014, 3];}else{lbSetCurSel [11014, 2];};
             {lbAdd [11016,_x];}forEach ["BLUE","GREEN","WHITE","YELLOW","RED"];
             lbSetCurSel [11016, 3];

           };
         };
  case 1:{

           If(count _group_info > 0)then
           {
             switch(_gc_spec)do
             {
               case 0:{
                        _control = ((findDisplay 36639) displayCtrl 11007);
                        If(ctrlChecked _control)then
                        {
                          ctrlEnable [11008,true];
                          missionNamespace setVariable [STRVAR_DO(group_control_chkBtn0),true,false];
                        }else{
                                ctrlEnable [11008,false];
                                missionNamespace setVariable [STRVAR_DO(group_control_chkBtn0),false,false];
                             };
                      };
               case 1:{
                        _control = ((findDisplay 36639) displayCtrl 11012);
                        If(ctrlChecked _control)then
                        {
                          {ctrlEnable [_x,true];}forEach [11014,11016];
                          missionNamespace setVariable [STRVAR_DO(group_control_chkBtn1),true,false];
                        }else{
                               {ctrlEnable [_x,false];}forEach [11014,11016];
                               missionNamespace setVariable [STRVAR_DO(group_control_chkBtn1),false,false];
                             };
                      };
               case 2:{
                        _control = ((findDisplay 36639) displayCtrl 11019);
                        If(ctrlChecked _control)then
                        {
                          ctrlEnable [11020,true];
                          missionNamespace setVariable [STRVAR_DO(group_control_chkBtn2),true,false];
                        }else{
                              ctrlEnable [11020,false];
                              missionNamespace setVariable [STRVAR_DO(group_control_chkBtn2),false,false];
                             };
                      };
             };
           };
         };
  case 2:{
           If(_i_idx == 5)then
           {
             ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 100))])];
           }else{ctrlSetText [11009,(format ["%1 m",(round((round(sliderPosition 11008)) * 10))])];};
         };
  case 3:{
           ctrlSetText [11021,(format["%1 %2",(round((round(sliderPosition 11020)) * 10)),"%"])];
         };
  case 4:{
          If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn0),false])then
          {
             [_grp_name,_grp_pos,(call compile(((ctrlText 11009) splitString " ") select 0))] call BFUNC(taskPatrol);
          };
          If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn1),false])then
          {
              _grp_name setBehaviour (lbText [11014,(lbCurSel 11014)]);
              _grp_name setCombatMode (lbText [11016,(lbCurSel 11016)]);
          };
          If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn2),false])then
          {
             _grp_vec setFuel ((call compile(((ctrlText 11021) splitString " ") select 0)) / 100);
          };
           [5] spawn MSOT_dlg_fnc_setGroupControl;
         };
  case 5:{
            If(count _group_info > 0)then
            {
              switch(_i_idx)do
              {
                case 0:{{ctrlShow [_x,true]}forEach [11006,11007,11018,11019];};
                case 1:{{ctrlShow [_x,true]}forEach [11018,11019];}
              };
              If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn0),false])then{missionNamespace setVariable [STRVAR_DO(group_control_chkBtn0),false,false];};
              If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn1),false])then{missionNamespace setVariable [STRVAR_DO(group_control_chkBtn1),false,false];};
              If(missionNamespace getVariable [STRVAR_DO(group_control_chkBtn2),false])then{missionNamespace setVariable [STRVAR_DO(group_control_chkBtn2),false,false];};
             [_grp_name] spawn MFUNC(system,setUnitSkill);
            };
            closeDialog ((uiNamespace getVariable ['msot_dlg',[]]) select 0);
            uiNamespace setVariable ['msot_dlg',[]];
         };

};
//[_grp_name] spawn MFUNC(system,setUnitSkill);
//_added_group enableAttack true;
//_added_group enableGunLights "AUTO";
