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
	     x = X_CENTERED(2.0);
	     y = Y_CENTERED(1.4);
	     w = W_SIZE(2.0);
	     h = H_SIZE(1.4);
    };

    class DIARSC(Pic_Use,show): DIARSC(alpha,RscPicture)
    {
	     idc = 10014;//1200
	     text = "pics\MSOT.paa";
	     x = X_CENTERED(0.9);//0.438151 * safezoneW + safezoneX;
	     y = Y_CENTERED(0.9);//0.33496 * safezoneH + safezoneY;
	     w = W_SIZE(0.9);
	     h = H_SIZE(0.9);
    };
  };
};
