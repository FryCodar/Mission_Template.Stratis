If(!hasInterface) exitWith {};
#include "msot_components.hpp"

disableSerialization;
_control = ((findDisplay 36643) displayCtrl 10024);
hint str _control;
{_control lbAdd _x;}forEach ["ArtilleryUnit1","ArtilleryUnit2","ArtilleryUnit3","ArtilleryUnit4","ArtilleryUnit5","ArtilleryUnit6"];
