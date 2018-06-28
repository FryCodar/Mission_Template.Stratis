If(!hasInterface) exitWith {};
#include "msot_components.hpp"

params ["_vec_type"];

private _arr = [];
private _config = (configFile >> "CfgVehicles" >> _vec_type >> "Turrets" >> "MainTurret");
If(_config call BFUNC(getCfgIsClass))then
{
  private _magazines = getArray(_config >> "magazines");
  If(count _magazines > 0)then
  {
    
  };
};
_arr
