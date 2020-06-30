//compass_ca.paa
class MSOT_SATVIEW_TABLE
{
  idd = 36644;
  movingEnable = 0;
  enableSimulation = true;
  onLoad = "uiNamespace setVariable ['msot_dlg',[36643]];[0] spawn MSOT_dlg_fnc_setSatViewControl";
  onUnload = "";

    class controls
    {
      class DIARSC(SatViewfenster,PictureSAT): DIARSC(normal,RscPicture)
      {
  	     idc = 12020;//9800
  	     text = "functions\dlg\TacticTab1.paa";
  	     x = safeZoneX;
  	     y = safeZoneY;
  	     w = safeZoneW;
  	     h = safeZoneH;
      };
       class DIARSC(SatViewfenster,BtnSAT): DIARSC(normal,RscPicButton)
   		{
   			idc = 12021;
        colorText[] = {0,0,0,0};
       	colorFocused[] = {0,0,0,0};   // border color for focused state
       	colorDisabled[] = {0,0,0,0};   // text color for disabled state
       	colorBackground[] = {1,1,1,1};
       	colorBackgroundDisabled[] = {0,0,0,0};   // background color for disabled state
       	colorBackgroundActive[] = {0,0,0,0};
        colorShadow[] = {0,0,0,0};
       	colorBorder[] = {0,0,0,0};
   			x = X_CENTERED(0.07);
   			y = Y_CALC(0.797);//0.797 * safezoneH + safezoneY;
   			w = W_SIZE(0.07);
   			h = H_SIZE(0.043);
   			text = "";
        toolTip = "Go Back";
   			action = "closeDialog ((uiNamespace getVariable ['msot_dlg',[0]]) select 0)";
   		};

      class DIARSC(SatViewfenster,InfoframeSatCam): DIARSC(normal,RscFrame)
      {
			     idc = 12022;
			     sizeEx = 0.04;
			     text = "SAT VIEW SYSTEM: "; //--- ToDo: Localize;
           x = X_CALC(0.28);
  	       y = Y_CENTERED(0.56);
  	       w = W_SIZE(0.6);
  	       h = H_SIZE(0.555);
      };

    };
};
