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
	     x = 0.190756 * safezoneW + safezoneX;
	     y = 0.0708962 * safezoneH + safezoneY;
	     w = 0.613334 * safezoneW;
	     h = 0.880213 * safezoneH;
    };

    class DIARSC(Frame_Rand,All): DIARSC(normal,RscFrame)
    {
	     idc = 10014;//1800
	      colorBackground[] = {};
	      text = "MSOT TACTIC TAB"; //--- ToDo: Localize;
	      x = 0.247451 * safezoneW + safezoneX;
	      y = 0.257941 * safezoneH + safezoneY;
	      w = 0.499945 * safezoneW;
	      h = 0.484117 * safezoneH;
    };

    class DIARSC(Pic_Use,show): DIARSC(normal,RscPicture)
    {
	     idc = 10015;//1200
	     text = "pics\MSOT.paa";
	     x = 0.438151 * safezoneW + safezoneX;
	     y = 0.33496 * safezoneH + safezoneY;
	     w = 0.108235 * safezoneW;
	     h = 0.154037 * safezoneH;
    };
  };
};
