if(!hasInterface) exitwith {};
#include "msot_components.hpp"
private ["_action_text","_text_part"];
params ["_color","_txt"];

_action_text = If(isLocalized _txt)then{localize _txt}else{_txt};
/*
_text_part = switch(toUpper _color)do
             {
               case "RED":{'<t color=''#ff0000'' size=''2''>' + _action_text + '</t>'};
               case "GREEN":{'<t color=''#f000ff00'' size=''2''>' + _action_text + '</t>'};
               case "BLUE":{'<t color=''#f000ffff'' size=''2''>' + _action_text + '</t>'};
               case "YELLOW":{'<t color=''#dddd00'' size=''2''>' + _action_text + '</t>'};
               case "LYELLOW":{'<t color=''#fdddfd4f'' size=''2''>' + _action_text + '</t>'};
               case "PINK":{'<t color=''#ff45f0'' size=''2''>' + _action_text + '</t>'};
               case "NORMAL":{_action_text};
               default {_action_text};
             };
*/
_text_part = switch(toUpper _color)do
             {
               case "RED":{"<t color='#ff0000' size='3'>" + "INFO" + "</t>"};
               case "GREEN":{"<t color='#f000ff00' size='3'>" + "INFO" + "</t>"};
               case "BLUE":{"<t color='#f000ffff' size='3'>" + "INFO" + "</t>"};
               case "YELLOW":{"<t color='#dddd00' size='3'>" + "INFO" + "</t>"};
               case "LYELLOW":{"<t color='#fdddfd4f' size='3'>" + "INFO" + "</t>"};
               case "PINK":{"<t color='#ff45f0' size='3'>" + "INFO" + "</t>"};
             };
//cutText [_text_part,"PLAIN",-1,true,true];
hint composeText[parseText(_text_part), lineBreak, lineBreak, parseText("<t size='1.2'>" + _action_text + "</t>")];
