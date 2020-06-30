

class MSOT_TRAVEL_TABLE
{
  idd = 36648;
  movingEnable = 0;
  enableSimulation = true;
  onLoad = "uiNamespace setVariable ['msot_dlg',[36648]];[] spawn MSOT_dlg_fnc_setDlgCtrl;[0] spawn MSOT_dlg_fnc_useTravelService";
  onUnload = "[2] spawn MSOT_dlg_fnc_setArtilleryMarker; uiNamespace setVariable ['msot_dlg',[]];";

  class controls
  {
    class DIARSC(Travel_Tab,Picture): DIARSC(normal,RscPicture)
    {
       idc = 10041;//9800
       text = "functions\dlg\TacticTab.paa";
       x = X_CENTERED(0.85);
       y = Y_CENTERED(0.73);
       w = W_SIZE(0.85);
       h = H_SIZE(0.73);
    };
    class DIARSC(Travel_Map,Screen): DIARSC(normal,Map)
    {
       idc = 10042;
       x = X_CALC(0.28);
       y = Y_CENTERED(0.55);
       w = W_SIZE(0.774);
       h = H_SIZE(0.40);
       onMouseButtonClick = "[1,(_this select 0),(_this select 2),(_this select 3)] spawn MSOT_dlg_fnc_setArtilleryMarker;[1] spawn MSOT_dlg_fnc_useTravelService";
    };
    class DIARSC(Text1_Travel,InfoText): DIARSC(normal,RscText)
    {
       idc = 10043;//9800
       style = 2;
       sizeEx = 0.05;
       text = "Select Travel Position on Map!";
       colorBackground[] = {0.5, 0.2, 0.1, 0.8};
       x = X_CALC(0.28);
       y = Y_CALC(0.63);
       w = W_SIZE(0.774);
       h = H_SIZE(0.03);
     };
     class DIARSC(Teleport_Travel,ListBtn): DIARSC(normal,RscButton)
     {
       idc = 10044;
       colorShadow[] = {0,0,0,0};
       colorBorder[] = {0,0,0,0.5};
       colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       colorBackground[] = {0,0,0,0.6};
       colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       period = 1;
       x = X_CALC(0.28);
       y = Y_CALC(0.675);//0.797 * safezoneH + safezoneY;
       w = W_SIZE(0.17);
       h = H_SIZE(0.088);
       text = "Teleport";
       toolTip = "Normal Teleport";
       action = "[2] spawn MSOT_dlg_fnc_useTravelService";
     };
     class DIARSC(Parachute_Travel,ListBtn): DIARSC(normal,RscButton)
     {
       idc = 10045;
       colorShadow[] = {0,0,0,0};
       colorBorder[] = {0,0,0,0.5};
       colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       colorBackground[] = {0,0,0,0.6};
       colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       period = 1;
       x = X_CALC(0.46);
       y = Y_CALC(0.675);//0.797 * safezoneH + safezoneY;
       w = W_SIZE(0.17);
       h = H_SIZE(0.088);
       text = "HALO Jump";
       toolTip = "Jump with Parachute";
       action = "[3] spawn MSOT_dlg_fnc_useTravelService";
     };
     class DIARSC(Confirm_Travel,ListBtn): DIARSC(normal,RscButton)
     {
       idc = 10046;
       colorShadow[] = {0,0,0,0};
       colorBorder[] = {0,0,0,0.5};
       colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       colorBackground[] = {1, 0,0, 0.8};
       colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
       period = 0;
       x = X_CALC(0.884);
       y = Y_CALC(0.675);//0.797 * safezoneH + safezoneY;
       w = W_SIZE(0.17);
       h = H_SIZE(0.088);
       text = "Action";
       toolTip = "Confirm Traveling";
       action = "[5] spawn MSOT_dlg_fnc_useTravelService";
     };
     class DIARSC(Frame_Travel,Infoframe): DIARSC(normal,RscFrame)
     {
          idc = 10046;
          sizeEx = 0.04;
          shadow = 2;
          colorText[] = {1, 1, 1, 1};
          text = "Altitude (in m): "; //--- ToDo: Localize;
          x = X_CALC(0.64);
          y = Y_CALC(0.665);
          w = W_SIZE(0.235);
          h = H_SIZE(0.1);
     };
     class DIARSC(Slider_Travel,Sliderbar): DIARSC(normal,Slider)
     {
	      idc = 10047;
        x = X_CALC(0.648);
        y = Y_CALC(0.69);
        w = W_SIZE(0.22);
        h = H_SIZE(0.025);
	      onSliderPosChanged = "[4] spawn MSOT_dlg_fnc_useTravelService";
     };
     class DIARSC(Text2_Travel,InfoText): DIARSC(normal,RscText)
     {
        idc = 10048;//9800
        style = 2;
        text = "500 m";
        colorBackground[] = {0, 0, 0, 1};
        x = X_CALC(0.725);
        y = Y_CALC(0.725);
        w = W_SIZE(0.07);
        h = H_SIZE(0.03);
      };
    class DIARSC(Back_All,Btn): DIARSC(normal,RscPicButton)
    {
      idc = 10049;
      colorText[] = {0,0,0,0};
      colorFocused[] = {0,0,0,0};   // border color for focused state
      colorDisabled[] = {0,0,0,0};   // text color for disabled state
      colorBackground[] = {0,0,0,0};
      colorBackgroundDisabled[] = {0,0,0,0};   // background color for disabled state
      colorBackgroundActive[] = {0,0,0,0};
      colorShadow[] = {0,0,0,0};
      colorBorder[] = {0,0,0,0};
      x = X_CENTERED(0.07);
      y = Y_CALC(0.797);//0.797 * safezoneH + safezoneY;
      w = W_SIZE(0.07);
      h = H_SIZE(0.043);
      text = "";
      toolTip = "Close Tablet";
      action = "closeDialog ((uiNamespace getVariable ['msot_dlg',[0]]) select 0)";
    };
  };
};
