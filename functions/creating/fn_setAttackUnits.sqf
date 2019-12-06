If(isMultiplayer)then{if(hasInterface) exitWith{};};
#include "msot_components.hpp"

/* --------------------------------------------------------------------------------------------------------------
Function: MSOT_creating_fnc_setUnits

Description: Creates Groups of Units on defined Positions.

              SERVER

Parameters: [POSITION,ARRAYWITHPOSITIONS,NUMBER GROUPS,NUMBER UNITS,GROUP INDEX,RANDOM TIME]

            POSITION  -             MainPosition where the spawned Enemy will attack

            ARRAYWITHPOSITIONS  -   Array with Positions where the Enemy can spawn

            NUMBER GROUPS   -       Number of Groups / -1 for NO Limit of Enemy spawn till (missionNamespace setVariable ["msot_stop_attack",false])

            NUMBER UNITS    -       Number of Units in a Group

            GROUP INDEX   -  Index of Different Classnames(if Classnames available!)
                             "NORMAL_UNITS","URBAN_UNITS","SPECIAL_UNITS","MIXED_NORMSPEC","MIXED_NORMSNIP","MIXED_ALL"

            RANDOM TIME   -  (Optional) default: 30 sec Random Sleeptime between Enemyspawn

             !INFORMATION!: "CIV_MEN" at GROUP INDEX is not supported!

Returns: [ARRAY with Names of all created Groups]

Examples:
            _isStored = [] spawn MSOT_creating_fnc_setAttackUnits;

Author: Fry

----------------------------------------------------------------------------------------------------------------- */
private ["_i","_att_grp","_group_classes","_att_spawn","_att_unit","_ran_spawn_pos","_wp","_wp1"];

params ["_main_pos","_positions_arr","_group_num","_unit_num","_grp_index",["_sl_time",30],["_combat_mode","YELLOW"],["_behavior_mode","COMBAT"]];

If((toUpper _grp_index) isEqualTo "CIV_MEN")exitWith{LOG_ERR("Wrong Group Index for ATTACK UNITS");hint "Wrong Group Index for ATTACK UNITS";};
If(count _positions_arr < 1)exitWith{LOG_ERR("No Positions available for ATTACK UNITS");hint "No Positions available for ATTACK UNITS";};
private _grp_arr = [];

If(_group_num > 0)then
{
  F_LOOP(_i,1,_group_num)
  {
    _group_classes = [_grp_index,_unit_num] call MFUNC(system,getWorkClasses);
    If(count _group_classes > 0)then
    {
      _att_grp = CREA_GROUP(MSOT_ENEMY_SIDE);
      _ran_spawn_pos = (selectRandom _positions_arr);
      {
        _att_unit = _att_grp createUnit [_x, _ran_spawn_pos, [], 1,"CAN_COLLIDE"];
        sleep 0.04;
      }forEach _group_classes;
      [_att_grp] call MFUNC(system,setUnitSkill);
      ARR_ADDVAR(_grp_arr,_att_grp);
      [_att_grp,_main_pos] call BFUNC(taskAttack);
      _att_grp setCombatMode _combat_mode;
      If(_sl_time < 1)then{_att_grp setBehaviour _behavior_mode;};
    };
    If(_sl_time > 1)then{sleep (random _sl_time);}else{sleep _sl_time;};
  };
}else{If(_group_num < 0)then
{
  While{(missionNamespace getVariable ["msot_stop_attack",true])}do
  {
    _group_classes = [_grp_index,_unit_num] call MFUNC(system,getWorkClasses);
    If(count _group_classes > 0)then
    {
      _att_grp = CREA_GROUP(MSOT_ENEMY_SIDE);
      _ran_spawn_pos = (selectRandom _positions_arr);
      {
        _att_unit = _att_grp createUnit [_x, _ran_spawn_pos, [], 1,"CAN_COLLIDE"];
        sleep 0.04;
      }forEach _group_classes;
      [_att_grp] call MFUNC(system,setUnitSkill);
      [_att_grp,_main_pos] call BFUNC(taskAttack);
      _att_grp setCombatMode _combat_mode;
      If(_sl_time < 1)then{_att_grp setBehaviour _behavior_mode;};
    };
    sleep (random _sl_time);
  };
};
};
private _save_group = missionNameSpace getVariable [STRVAR_DO(save_in_system),true];
If(count _grp_arr > 0 && _save_group)then
{
  ["GROUPS",_main_pos,_grp_arr] spawn MFUNC(system,addToSystem);
};
_grp_arr
