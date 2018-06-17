#include "define.hpp"


class MSOT_Tactic_Table
{

idd = 36642;
movingEnable = 0;
enableSimulation = true;
onLoad = "uiNamespace setVariable ['msot_dlg',[36642,(_this select 0)]];";
onUnload = "uiNamespace setVariable ['msot_dlg',[]];";

  class controls
  {
    class DIARSC(Tactic_Tab,Picture): DIARSC(normal,RscPicture)
    {
	     idc = 10013;//9800
	     text = "functions\dialog\TacticTab.paa";
	     x = X_CENTERED(0.85);
	     y = Y_CENTERED(0.73);
	     w = W_SIZE(0.85);
	     h = H_SIZE(0.73);
    };

    class DIARSC(Pic_Use,show): DIARSC(alpha,RscPicture)
    {
	     idc = 10014;//1200
	     text = "pics\MSOT.paa";
	     x = X_CENTERED(0.46);//0.438151 * safezoneW + safezoneX;
	     y = Y_CENTERED(0.5);//0.33496 * safezoneH + safezoneY;
	     w = W_SIZE(0.46);
	     h = H_SIZE(0.5);
    };

    class DIARSC(Back_All,Btn): DIARSC(normal,RscPicButton)
		{
			idc = 10015;
      colorText[] = {0,0,0,0};
    	colorFocused[] = {0,0,0,0};   // border color for focused state
    	colorDisabled[] = {0,0,0,0};   // text color for disabled state
    	colorBackground[] = {0,0,0,0};
    	colorBackgroundDisabled[] = {0,0,0,0};   // background color for disabled state
    	colorBackgroundActive[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
    	colorBorder[] = {0,0,0,0};
			x = X_CENTERED(0.07);
			y = Y_CALC(0.797)//0.797 * safezoneH + safezoneY;
			w = W_SIZE(0.07);
			h = H_SIZE(0.043);
			text = "";
      toolTip = "Close Tablet";
			action = "call MSOT_dialog_fnc_closeDisplays";
		};

    class DIARSC(Artillery_1st,Btn): DIARSC(normal,RscPicButton)
		{
			idc = 10016;
      colorFocused[] = {0,0,0,0};   // border color for focused state
    	colorDisabled[] = {0,0,0,0};   // text color for disabled state
    	colorBackground[] = {0,0,0,0};
    	colorBackgroundDisabled[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
    	colorBorder[] = {0,0,0,0};
			x = X_LEFT_SIDED(0.17,0.08);
			y = Y_UP_SIDED(0.2,0.08)
			w = W_SIZE(0.17);
			h = H_SIZE(0.2);
			text = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\artillery_ca.paa";
      toolTip = "Call Artillery Strike";
			action = "hint 'Artillery';";
		};
    class DIARSC(Airsupply_2nd,Btn): DIARSC(normal,RscPicButton)
		{
			idc = 10017;
      colorFocused[] = {0,0,0,0};   // border color for focused state
    	colorDisabled[] = {0,0,0,0};   // text color for disabled state
    	colorBackground[] = {0,0,0,0};
    	colorBackgroundDisabled[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
    	colorBorder[] = {0,0,0,0};
			x = X_RIGHT_SIDED(0,0.08);
			y = Y_UP_SIDED(0.2,0.08)
			w = W_SIZE(0.17);
			h = H_SIZE(0.2);
			text = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\supplydrop_ca.paa";
      toolTip = "Call Air Supplies";
			action = "hint 'Airsupply';";
		};
    class DIARSC(Aircas_3rd,Btn): DIARSC(normal,RscPicButton)
		{
			idc = 10018;
      colorFocused[] = {0,0,0,0};   // border color for focused state
    	colorDisabled[] = {0,0,0,0};   // text color for disabled state
    	colorBackground[] = {0,0,0,0};
    	colorBackgroundDisabled[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
    	colorBorder[] = {0,0,0,0};
			x = X_LEFT_SIDED(0.17,0.08);
			y = Y_DOWN_SIDED(0,0.08)
			w = W_SIZE(0.17);
			h = H_SIZE(0.2);
      text = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\cas_ca.paa";
			toolTip = "Call Close Air Support (CAS)";
			action = "hint 'C A S';";
		};
    class DIARSC(Satview_4th,Btn): DIARSC(normal,RscPicButton)
		{
			idc = 10019;
      colorFocused[] = {0,0,0,0};   // border color for focused state
    	colorDisabled[] = {0,0,0,0};   // text color for disabled state
    	colorBackground[] = {0,0,0,0};
    	colorBackgroundDisabled[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
    	colorBorder[] = {0,0,0,0};
			x = X_RIGHT_SIDED(0,0.08);
			y = Y_DOWN_SIDED(0,0.08)
			w = W_SIZE(0.17);
			h = H_SIZE(0.2);
			text = "\a3\Ui_f\data\GUI\Rsc\RscDisplayArsenal\gps_ca.paa";
      toolTip = "Open SatView System";
			action = "hint 'SatView';";

		};
  };
};

class MSOT_ARTILLERY_TABLE
{
  idd = 36643;
  movingEnable = 0;
  enableSimulation = true;
  onLoad = "uiNamespace setVariable ['msot_dlg',36643];";
  onUnload = "uiNamespace setVariable ['msot_dlg',0];";

    class controls
    {


    };
};
