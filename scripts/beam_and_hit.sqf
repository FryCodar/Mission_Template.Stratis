If(isMultiplayer)then{If(!hasInterface)exitWith{};};

/*
nul = [thisTrigger,[5589.6,15289.6,0.0015564],0.4] spawn {sleep 1;[[(list (_this select 0)),(_this select 1),(_this select 2)],"scripts\beam_and_hit.sqf"] remoteExec ["execVM",0,false];};
*/
params ["_pl_array","_tele_pos","_damage_grade"];
private _person = player;
If(_person in _pl_array)then
{
  cutText ["","BLACK",1];
  sleep 2;
  _person setPos _tele_pos;
  private _random_body_part = [];
  for "_i" from 1 to 4 do {_random_body_part pushBackUnique (selectRandom ["head", "body", "hand_l", "hand_r", "leg_l", "leg_r"]);sleep 0.04;};
  {_num = [_person,_damage_grade,_x,"stab"] call ace_medical_fnc_addDamageToUnit;sleep 0.05;}forEach _random_body_part;
  If(count (primaryWeapon _person) > 0)then{_person removeWeaponGlobal (primaryWeapon _person);};
  sleep 1;
  cutText ["","BLACK IN",1];
};
