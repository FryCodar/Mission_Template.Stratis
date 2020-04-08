If(isMultiplayer)then{If(!hasInterface)exitWith{};};
#include "msot_components.hpp"
/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_system_fnc_setClientHoldAction

Description: Add a defined HoldAction to an Object.

Parameters: [OBJECT,TEXT,ACTIONTYPE,ACTIONMOVE,TIME,SCRIPT]

            OBJECT         -     NAME OF OBJECT TO ADD THE ACTION
            TEXT           -     NORMAL TEXT STRING "" OR "STR_BOX_ACTION"
            ACTIONTYPE     -     A DEFINED ACTION OR INITIALIZE AN AMMO BOX  - "ACTION" / "AMMO"
                                 (AMMOBOX VERSION IS A OWN SYSTEM FUNCTION - Blacklist Option possible >> initplayerlocal.sqf)



Returns: Nothing

Examples:
            [] spawn MSOT_system_fnc_setClientHoldAction

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_h_add_text","_sign_path","_play_move","_add_info","_action_info"];
params ["_h_object","_h_text","_h_type_sign","_h_timer","_h_do_script",["_make_animation",{}],["_cond","_this distance _target < 3"]];
//(format['<t color=''#f000ff00''>%1</t>',(localize _h_text)])
_h_add_text = If(isLocalized _h_text)then{(format['<t color=''#f000ff00''>%1</t>',(localize _h_text)])}else{(format['<t color=''#f000ff00''>%1</t>',_h_text])};
//_h_add_text = If(isLocalized _h_text)then{(localize _h_text)}else{_h_text};


_sign_path = switch(toUpper _h_type_sign)do
             {
               case "CONNECT":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa"};
               case "HACKEN":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa"};
               case "RESPAWN":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_forceRespawn_ca.paa"};
               case "REVIVE":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa"};
               case "MEDICREVIVE":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa"};
               case "SEARCH":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa"};
               case "TAKEOFF1":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa"};
               case "TAKEOFF2":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa"};
               case "UNBIND":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unbind_ca.paa"};
               case "ONLOAD":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_loaddevice_ca.paa"};
               case "UNLOAD":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloaddevice_ca.paa"};
               case "THUMBUP":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa"};
               case "THUMBDOWN":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"};
               case "HANDCUFF":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa"};
               case "ADDLEADER":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_requestleadership_ca.paa"};
               case "REMOVELEADER":{"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_passleadership_ca.paa"};
               default {"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa"};
             };


_add_info = [_h_object,_h_do_script];
_action_info = player getVariable [STRVAR_DO(holdaction_info),[]];
ARR_ADDVAR(_action_info,_add_info);
player setVariable [STRVAR_DO(holdaction_info),_action_info,false];
             [
               _h_object,											// Object the action is attached to
               _h_add_text,										// Title of the action
               _sign_path,	// Idle icon shown on screen
               _sign_path,	// Progress icon shown on screen
               _cond,						// Condition for the action to be shown
               "_caller distance _target < 3",						// Condition for the action to progress
               _make_animation,													// Code executed when action starts
               {},													// Code executed on every progress tick
               {_this spawn MSOT_system_fnc_doHoldAction},// Code executed on completion
               {},													// Code executed on interrupted
               [],													// Arguments passed to the scripts as _this select 3
               _h_timer,													// Action duration [s]
               1,													// Priority
               true,												// Remove on completion
               true,												// Show in unconscious state
               true
               ]  call BFUNC(holdActionAdd);
