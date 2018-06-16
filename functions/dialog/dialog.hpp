#include "define.hpp"


class MSOT_Tactic_Table
{

idd = -1;
movingEnable = 0;
enableSimulation = true;
onLoad = "uiNamespace setVariable ['msot_dlg',true];";
onUnload = "uiNamespace setVariable ['msot_dlg',false];";

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
	     x = X_CENTERED(0.5);//0.438151 * safezoneW + safezoneX;
	     y = Y_CENTERED(0.5);//0.33496 * safezoneH + safezoneY;
	     w = W_SIZE(0.5);
	     h = H_SIZE(0.5);
    };

    class DIARSC(Close_All,Btn): DIARSC(normal,RscPicButton)
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
			x = X_CENTERED(0.18);
			y = 0.81 * safezoneH + safezoneY;
			w = W_SIZE(0.18);
			h = 0.043 * safezoneH;
			text = "";
      toolTip = "Close Tablet";
			action = "closeDialog 0";
		};
  };
};
