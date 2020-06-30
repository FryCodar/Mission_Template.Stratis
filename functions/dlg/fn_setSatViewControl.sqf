If(!hasInterface) exitWith {};
#include "msot_components.hpp"
private ["_control"];
params ["_idx"];


disableSerialization;
switch(_idx)do
{
  case 0:{
           _control = ((findDisplay 36644) displayCtrl 10022);
           /*
           If(missionNamespace getVariable [STRVAR_DO(available_satview),true])then
           {
             MSOT_SAT_PLAYER_POS = [(getPos player),[((getPosATL player) select 0),((getPosATL player) select 1) - 1,((getPosATL player) select 2) + 10]];
    	       MSOT_SAT_MAX_X = [(((getPos player) select 0) - 1000),(((getPos player) select 0) + 1000)];
    	       MSOT_SAT_MAX_Y = [(((getPos player) select 1) - 1001),(((getPos player) select 1) + 999)];
    	       MSOT_SAT_MAX_Z = [((getPosATL player) select 2) + 150];



             MSOT_SAT_CAM = "camera" camCreate (MSOT_SAT_PLAYER_POS select 1);
      		   MSOT_SAT_CAM camSetTarget (MSOT_SAT_PLAYER_POS select 0);
      		   MSOT_SAT_CAM cameraEffect ["internal", "TOP"];
      		   MSOT_SAT_CAM camSetFov 0.75;
      		   MSOT_SAT_CAM camCommitPrepared 0;

           };
           */
         };
};
/*
COA_dlg_set_sat_view = {

       disableSerialization;
       If(COA_Sat_Signal == 0)then
	   {
                COA_SAT_EFFECT1 = ppEffectCreate ["filmGrain", 2005];
                COA_SAT_EFFECT1 ppEffectEnable true;
                COA_SAT_EFFECT1 ppEffectAdjust [1,3,4,0,1,true];
                COA_SAT_EFFECT1 ppEffectCommit 0;

				COA_SAT_EFFECT2 = ppEffectCreate ["colorCorrections" , 1500];
				COA_SAT_EFFECT2 ppEffectEnable true;
				COA_SAT_EFFECT2 ppEffectAdjust [0.7, 0.7, 1, [0.7, 0.7, 0.7, 1], [0.7, 0.7, 0.7, 1],[0.7, 0.7, 0.7, 1]];
				COA_SAT_EFFECT2 ppEffectCommit 0;

				If((lbSize 10040) > 0)then{lbClear 10040};
				ctrlSetText [10038,"X: 0.0"];
				ctrlSetText [10039,"Y: 0.0"];
				sliderSetRange [10034, 0, 100];
				sliderSetPosition [10034, 0];
				ctrlSetText [10037,(format ["%1x",sliderPosition 10034])];//test
				If(ctrlEnabled 10033)then{ctrlEnable [10033, false];};
                If(ctrlEnabled 10034)then{ctrlEnable [10034, false];};

                If(!ctrlVisible 10042)then{ctrlShow [10042,true];};

       };

	   If(COA_Sat_Signal == 1)then
	   {
	       COA_SAT_PLAYER_POS = [(getPos player),[((getPosATL player) select 0),((getPosATL player) select 1) - 1,((getPosATL player) select 2) + 150]];
	       COA_SAT_MAX_X = [(((getPos player) select 0) - 1000),(((getPos player) select 0) + 1000)];
	       COA_SAT_MAX_Y = [(((getPos player) select 1) - 1001),(((getPos player) select 1) + 999)];
	       COA_SAT_MAX_Z = [((getPosATL player) select 2) + 150];

		   If(!ctrlEnabled 10033)then{ctrlEnable [10033, true];};
           If(!ctrlEnabled 10034)then{ctrlEnable [10034, true];};
		   If(ctrlVisible 10042)then{ctrlShow [10042,false];};
		   sliderSetRange [10034, 0, 100];
		   sliderSetPosition [10034, 0];
		   ctrlSetText [10037,(format ["%1x",sliderPosition 10034])];//test
		   ctrlSetText [10038,format ["X: %1", ((getPos player) select 0)]];
		   ctrlSetText [10039,format ["Y: %1", ((getPos player) select 1)]];
		   {lbAdd [10040,_x];} foreach ["Normal","NightView","Thermal 1","Thermal 2","Thermal 3","Thermal 4","Thermal 5","Thermal 6","Thermal 7","Thermal 8"];
		   lbSetCurSel [10040,0];


		   COA_SAT_CAM = "camera" camCreate (COA_SAT_PLAYER_POS select 1);
		   COA_SAT_CAM camSetTarget (COA_SAT_PLAYER_POS select 0);
		   COA_SAT_CAM cameraEffect ["internal", "TOP"];
		   COA_SAT_CAM camSetFov 1;
		   COA_SAT_CAM camCommitPrepared 0;


		   showCinemaBorder false;

		   COA_SAT_EFFECT1 = ppEffectCreate ["filmGrain", 2005];
           COA_SAT_EFFECT1 ppEffectEnable true;
           COA_SAT_EFFECT1 ppEffectAdjust [0.7,3,4,0,1,true];
		   COA_SAT_EFFECT1 ppEffectForceInNVG true;
           COA_SAT_EFFECT1 ppEffectCommit 0;

	   };
};

COA_set_sat_view_mode = {

    switch(lbCurSel 10040)do
    {
      case 0:{camUseNVG false; false setCamUseTi COA_SAT_VIEW_VIEWMODEIDX;};
	  case 1:{false setCamUseTi COA_SAT_VIEW_VIEWMODEIDX;camUseNVG true;};
	  case 2:{camUseNVG false;true setCamUseTi 0;COA_SAT_VIEW_VIEWMODEIDX = 0;};
	  case 3:{camUseNVG false;true setCamUseTi 1;COA_SAT_VIEW_VIEWMODEIDX = 1;};
	  case 4:{camUseNVG false;true setCamUseTi 2;COA_SAT_VIEW_VIEWMODEIDX = 2;};
	  case 5:{camUseNVG false;true setCamUseTi 3;COA_SAT_VIEW_VIEWMODEIDX = 3;};
	  case 6:{camUseNVG false;true setCamUseTi 4;COA_SAT_VIEW_VIEWMODEIDX = 4;};
	  case 7:{camUseNVG false;true setCamUseTi 5;COA_SAT_VIEW_VIEWMODEIDX = 5;};
	  case 8:{camUseNVG false;true setCamUseTi 6;COA_SAT_VIEW_VIEWMODEIDX = 6;};
	  case 9:{camUseNVG false;true setCamUseTi 7;COA_SAT_VIEW_VIEWMODEIDX = 7;};
    };
};

COA_set_slider_sat_focus = {

   private ["_var1","_end"];

   _var1 = 0;
   _end = 0;
   ctrlSetText [10037,(format ["%1x",(round(sliderPosition 10034))])];//test
   switch(true)do
   {
     case ((round(sliderPosition 10034)) == 100):{_end = 0;};
     case ((round(sliderPosition 10034)) > 0 && (round(sliderPosition 10034)) < 100):{ _var1 = 100 - (round(sliderPosition 10034));
																					   _end = _var1 / 100;
	                                                                                 };
     case ((round(sliderPosition 10034)) == 0):{_end = 1;};
   };

   COA_SAT_CAM camSetFov _end;
   COA_SAT_CAM camCommitPrepared 0;
   COA_SAT_FOCUS = _end;
};

COA_Sat_Mouse_Ctrl = {

   private ["_idx","_work_arr","_last_x","_last_y","_move_factor","_focus","_var1","_var2","_campos","_x","_y"];

   _idx = _this select 0;
   _work_arr = _this select 1;
   _move_factor = 1.5;
   If(COA_Sat_Signal == 1)then
   {
     switch(_idx)do
	 {
	   case 1:{
	            If(COA_ACTIVATE_SAT_CTRL && (_work_arr select 3))then
				{

				  If(COA_CAM_MOVE_CTRL)then
				  {
				    _campos = position COA_SAT_CAM;
					_x = (_campos select 0);
					_y = (_campos select 1);

				    switch(true)do
					{
					  case ((_campos select 0) > (COA_SAT_MAX_X select 0) && (_work_arr select 1) < COA_SAT_X_AXIS_OLD):{_x = (_campos select 0) - _move_factor;};
					  case ((_campos select 0) < (COA_SAT_MAX_X select 1) && (_work_arr select 1) > COA_SAT_X_AXIS_OLD):{_x = (_campos select 0) + _move_factor;};
					};
					switch(true)do
					{
					  case ((_campos select 1) > (COA_SAT_MAX_Y select 0) && (_work_arr select 2) < COA_SAT_Y_AXIS_OLD):{_y = (_campos select 1) + _move_factor;};
					  case ((_campos select 1) < (COA_SAT_MAX_Y select 1) && (_work_arr select 2) > COA_SAT_Y_AXIS_OLD):{_y = (_campos select 1) - _move_factor;};
					};

					COA_SAT_CAM camSetPos [_x,_y,(COA_SAT_MAX_Z select 0)];
					COA_SAT_CAM camSetTarget [_x,(_y + 1),0];
					COA_SAT_CAM camCommitPrepared 0;

					ctrlSetText [10038,format ["X: %1",(_x)]];
		            ctrlSetText [10039,format ["Y: %1",(_y + 1)]];

				  };
				  COA_SAT_X_AXIS_OLD = (_work_arr select 1);
				  COA_SAT_Y_AXIS_OLD = (_work_arr select 2);
				  If(!COA_CAM_MOVE_CTRL)then{COA_CAM_MOVE_CTRL = true;};
				};
	          };
	   case 2:{
	            If(!COA_ACTIVATE_SAT_CTRL && (_work_arr select 1) == 1)then
				{
	    		  COA_ACTIVATE_SAT_CTRL = true;
				};
	          };
	   case 3:{
	            If(COA_ACTIVATE_SAT_CTRL && (_work_arr select 1) == 1)then
				{
				  COA_ACTIVATE_SAT_CTRL = false;
				  COA_CAM_MOVE_CTRL = false;
	            };
	          };
	   case 4:{
	            If(COA_ACTIVATE_SAT_CTRL)then
				{
				  switch(true)do
				  {
				    case ((_work_arr select 1) > 0 && (round(sliderPosition 10034)) < 100):{
																							    _focus = 0;
																								_var1 = 0;
																								_var2 = 0;

																								If(COA_SAT_FOCUS > 0)then
																								{
																							     _focus = COA_SAT_FOCUS - 0.01;
																								 _var1 = _focus * 100;
																								 _var2 = 100 - _var1;
																								 sliderSetPosition [10034, (round(_var2))];
																								 ctrlSetText [10037,(format ["%1x",(round(sliderPosition 10034))])];
																								 COA_SAT_CAM camSetFov _focus;
																								 COA_SAT_CAM camCommitPrepared 0;
																								 COA_SAT_FOCUS = _focus;
																							    };
					                                                                       };
				    case ((_work_arr select 1) < 0 && (round(sliderPosition 10034)) > 0):{
					                                                                        _focus = 0;
																						    _var1 = 0;
																						    _var2 = 0;
					                                                                        If(COA_SAT_FOCUS < 1)then
																							{
																							  _focus = COA_SAT_FOCUS + 0.01;
																							  _var1 = _focus * 100;
																							  _var2 = 100 - _var1;
																							  sliderSetPosition [10034, (round(_var2))];
																							  ctrlSetText [10037,(format ["%1x",(round(sliderPosition 10034))])];
																							  COA_SAT_CAM camSetFov _focus;
																							  COA_SAT_CAM camCommitPrepared 0;
																							  COA_SAT_FOCUS = _focus;
																							};
				                                                                          };
				  };
	            };
	          };
	   case 5:{
	            COA_SAT_CAM camSetPos (COA_SAT_PLAYER_POS select 1);
			    COA_SAT_CAM camSetTarget (COA_SAT_PLAYER_POS select 0);
			    COA_SAT_CAM camCommitPrepared 2;

				ctrlSetText [10038,format ["X: %1",((COA_SAT_PLAYER_POS select 0) select 0)]];
		        ctrlSetText [10039,format ["Y: %1",((COA_SAT_PLAYER_POS select 0) select 1)]];

	          };
	 };
   };

};
*/
