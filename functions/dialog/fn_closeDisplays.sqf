if(!hasInterface) exitwith {};
#include "msot_components.hpp"

private _holder = uiNamespace getVariable ["msot_dlg",[]];

switch(true)do
{
  case ((_holder select 0) isEqualTo 36642):{closeDialog (_holder select 0);disableSerialization;};
  case ((_holder select 0) > 36642):{(_holder select 1) closeDisplay (_holder select 0);uiNamespace setVariable ["msot_dlg",[36642]];disableSerialization;};
};
