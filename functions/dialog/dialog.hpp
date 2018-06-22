#include "define.hpp"


class MSOT_Tactic_Table
{

idd = 36642;
movingEnable = 0;
enableSimulation = true;
onLoad = "uiNamespace setVariable ['msot_dlg',[36642]];";
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
			action = "closeDialog ((uiNamespace getVariable ['msot_dlg',[0]]) select 0);";
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
			action = "createDialog 'MSOT_ARTILLERY_TABLE';";
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
  onLoad = "uiNamespace setVariable ['msot_dlg',[36643]];";
  onUnload = "";

    class controls
    {
      class DIARSC(Backround_Artillery,Picture): DIARSC(normal,RscPicture)
      {
  	     idc = 10020;//9800
  	     text = "functions\dialog\TacticTab.paa";
  	     x = X_CENTERED(0.85);
  	     y = Y_CENTERED(0.73);
  	     w = W_SIZE(0.85);
  	     h = H_SIZE(0.73);
      };
       class DIARSC(Back_Artillery,Btn): DIARSC(normal,RscPicButton)
   		{
   			idc = 10021;
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
        toolTip = "Go Back";
   			action = "closeDialog ((uiNamespace getVariable ['msot_dlg',[0]]) select 0);";
   		};
      class DIARSC(Map_Artillery,Screen): DIARSC(normal,Map)
      {
	       idc = 10022;
	       x = X_CALC(0.28);
	       y = Y_CENTERED(0.55);
	       w = W_SIZE(0.45);
	       h = H_SIZE(0.55);
      };
      class DIARSC(Frame1_Artillery,Infoframe): DIARSC(normal,RscFrame)
      {
			     idc = 10023;
			     sizeEx = 0.04;
			     text = "Available Artillery: "; //--- ToDo: Localize;
           x = X_RIGHT_SIDED(0.071,0);
           y = Y_CALC(0.215);
           w = W_SIZE(0.32);
           h = H_SIZE(0.12);
      };
      class DIARSC(List1_Artillery,ListBox): DIARSC(normal,ListBox)
      {
        idc = 10024;
        colorBackground[] = {0,0,0,0.6};
        x = X_RIGHT_SIDED(0.072,0);
        y = Y_CALC(0.240);
        w = W_SIZE(0.316);
        h = H_SIZE(0.09);
        onLBDblClick = "hint 'lol';";
      };
      class DIARSC(AddBtn_Artillery,ListBtn): DIARSC(normal,RscButton)
      {
        idc = 10025;
        colorShadow[] = {0,0,0,0};
      	colorBorder[] = {0,0,0,0.5};
        colorBackground[] = {0.1, 0.8, 0.3, 0.8};
        period = 0;
        x = X_RIGHT_SIDED(0.228,0);
  			y = Y_CALC(0.34);//0.797 * safezoneH + safezoneY;
  			w = W_SIZE(0.14);
  			h = H_SIZE(0.03);
  			text = "Add";
        toolTip = "Add Vehicle";
  			action = "";
      };
      class DIARSC(RemBtn_Artillery,ListBtn): DIARSC(normal,RscButton)
      {
        idc = 10026;
        colorShadow[] = {0,0,0,0};
      	colorBorder[] = {0,0,0,0.5};
        colorBackground[] = {1, 0,0, 0.8};
        period = 0;
        x = X_RIGHT_SIDED(0.08,0);
  			y = Y_CALC(0.34);//0.797 * safezoneH + safezoneY;
  			w = W_SIZE(0.14);
  			h = H_SIZE(0.03);
  			text = "Remove";
        toolTip = "Remove Vehicle";
  			action = "";
      };
      class DIARSC(Frame2_Artillery,Infoframe): DIARSC(normal,RscFrame)
      {
			     idc = 10027;
			     sizeEx = 0.04;
			     text = "Selected Artillery: "; //--- ToDo: Localize;
           x = X_RIGHT_SIDED(0.071,0);
           y = Y_CALC(0.374);
           w = W_SIZE(0.32);
           h = H_SIZE(0.118);
      };
      class DIARSC(List2_Artillery,ListBox): DIARSC(normal,ListBox)
      {
        idc = 10028;
        colorBackground[] = {0,0,0,0.6};
        x = X_RIGHT_SIDED(0.072,0);
        y = Y_CALC(0.397);
        w = W_SIZE(0.316);
        h = H_SIZE(0.09);
        onLBDblClick = "hint 'lol';";
      };
      class DIARSC(Text1_Artillery,InfoText): DIARSC(normal,RscText)
      {
  	     idc = 10029;//9800
  	     text = "";
         colorBackground[] = {0.5, 0.2, 0.1, 0.8};
  	     x = X_RIGHT_SIDED(0.070,0);
  	     y = Y_CALC(0.492);
  	     w = W_SIZE(0.32);
  	     h = H_SIZE(0.03);
      };
      class DIARSC(Frame3_Artillery,Infoframe): DIARSC(normal,RscFrame)
      {
			     idc = 10030;
			     sizeEx = 0.04;
			     text = "Artillery Ammo: "; //--- ToDo: Localize;
           x = X_RIGHT_SIDED(0.071,0);
           y = Y_CALC(0.52);
           w = W_SIZE(0.16);
           h = H_SIZE(0.1);
      };
      class DIARSC(List3_Artillery,ListBox): DIARSC(normal,ListBox)
      {
        idc = 10031;
        colorBackground[] = {0,0,0,0.6};
        x = X_RIGHT_SIDED(0.072,0);
        y = Y_CALC(0.542);
        w = W_SIZE(0.155);
        h = H_SIZE(0.075);
        onLBDblClick = "hint 'lol';";
      };
      class DIARSC(RelBtn_Artillery,ListBtn): DIARSC(normal,RscButton)
      {
        idc = 10032;
        colorShadow[] = {0,0,0,0};
      	colorBorder[] = {0,0,0,0.5};
        colorBackground[] = {0.1,0.3,0.4, 0.8};
        period = 0;
        x = X_RIGHT_SIDED(0.236,0);
  			y = Y_CALC(0.542);//0.797 * safezoneH + safezoneY;
  			w = W_SIZE(0.15);
  			h = H_SIZE(0.075);
  			text = "Reload";
        toolTip = "Reload Vehicle";
  			action = "";
      };
      class DIARSC(Frame3_Artillery,Infoframe): DIARSC(normal,RscFrame)
      {
           idc = 10030;
           sizeEx = 0.04;
           text = "Artillery Ammo: "; //--- ToDo: Localize;
           x = X_RIGHT_SIDED(0.071,0);
           y = Y_CALC(0.52);
           w = W_SIZE(0.16);
           h = H_SIZE(0.1);
      };
    };
};
