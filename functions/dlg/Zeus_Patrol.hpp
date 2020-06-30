

class MSOT_ZEUS_PATROL
{
  idd = 36639;
  movingEnable = 1;
  enableSimulation = true;
  onLoad = "uiNamespace setVariable ['msot_dlg',[36639]];[0] spawn MSOT_dlg_fnc_setGroupControl";
  onUnload = "[5] spawn MSOT_dlg_fnc_setGroupControl";

    class controls
    {
       class DIARSC(Zeusfenster,Background): DIARSC(normal,Black_Backround)
		   {
			      idc = 11001;
            moving = 1;
            x = X_CENTERED(0.35);
            y = Y_CENTERED(0.3);
            w = W_SIZE(0.35);
            h = H_SIZE(0.35);
			      colorBackground[] = {0,0,0,0.6};
      };
      class DIARSC(Zeusfenster,oben): DIARSC(normal,RscText)
		  {
			     colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.8])"};
           text = "MSOT Group Control";
           moving = 1;
			     idc = 11002;
           x = X_CENTERED(0.35);
    	     y = Y_CENTERED(0.3);
    	     w = W_SIZE(0.35);
    	     h = H_SIZE(0.03);
		   };
       class DIARSC(Zeusfenster,OkBtn): DIARSC(normal,RscButton)
       {
         idc = 11003;
         colorShadow[] = {0,0,0,0};
         colorBorder[] = {0,0,0,0.5};
         colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
         colorBackground[] = {0.3,0.3,0.3,1};
         colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
         period = 0;
         x = X_CALC(0.695);
         y = Y_CALC(0.66);//0.797 * safezoneH + safezoneY;
         w = W_SIZE(0.1);
         h = H_SIZE(0.03);
         text = "OK";
         toolTip = "";
         action = "[4] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,CancleBtn): DIARSC(normal,RscButton)
       {
         idc = 11004;
         colorShadow[] = {0,0,0,0};
         colorBorder[] = {0,0,0,0.5};
         colorFocused[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
         colorBackground[] = {0.3,0.3,0.3,1};
         colorBackgroundActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
         period = 0;
         x = X_CALC(0.54);
         y = Y_CALC(0.66);//0.797 * safezoneH + safezoneY;
         w = W_SIZE(0.1);
         h = H_SIZE(0.03);
         text = "Cancel";
         toolTip = "";
         action = "[5] spawn MSOT_dlg_fnc_setGroupControl";
       };
       //Waypointbereich____________________________________________________________________________________________________________________________________________________________________________________
       class DIARSC(Zeusfenster,InfoframeWP): DIARSC(normal,RscFrame)
       {
            idc = 11005;
            sizeEx = 0.04;
            shadow = 2;
            colorText[] = {1, 1, 1, 1};
            text = "Add Patrol Waypoints ?"; //--- ToDo: Localize;
            x = X_CENTERED(0.34);
     	      y = Y_CENTERED(0.245);
            w = W_SIZE(0.34);
            h = H_SIZE(0.09);
       };

       class DIARSC(Zeusfenster,InfoframeCheckboxWP): DIARSC(normal,RscFrame)
       {
            idc = 11006;
            sizeEx = 0.04;
            shadow = 0;
            colorText[] = {1, 1, 1, 1};
            text = ""; //--- ToDo: Localize;
            x = X_CALC(0.528);
     	      y = Y_CENTERED(0.165);
            w = W_SIZE(0.025);
            h = H_SIZE(0.03);
       };
       class DIARSC(Zeusfenster,CheckBoxWP): DIARSC(normal,Checkboxes)
       {
          style = 2098;
          idc = 11007;
       	  x = X_CALC(0.53);
       	  y = Y_CENTERED(0.156);
       	  w = W_SIZE(0.019);
       	  h = H_SIZE(0.021);
          colorText[] = {0, 0, 0, 1}; // checkbox unchecked color
        	colorTextSelect[] = {0, 1, 0, 1}; // checkbox checked color

          strings[] = {"\a3\Ui_f\data\IGUI\Cfg\Actions\ico_ON_ca.paa"};
        	onCheckBoxesSelChanged = "[1,0] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,SliderbarWP): DIARSC(normal,Slider)
       {
  	      idc = 11008;
          x = X_CALC(0.58);
          y = Y_CALC(0.42);
          w = W_SIZE(0.18);
          h = H_SIZE(0.025);
          color[] = {1, 1, 1, 1};
        	colorActive[] = {1, 1, 1, 1};
        	colorDisabled[] = {0.3, 0.3, 0.3, 1};
  	      onSliderPosChanged = "[2] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,InfoTextWP): DIARSC(normal,RscText)
       {
          idc = 11009;//9800
          style = 2;
          text = "50 m";
          colorBackground[] = {0, 0, 0, 1};
          x = X_CALC(0.765);
          y = Y_CALC(0.418);
          w = W_SIZE(0.06);
          h = H_SIZE(0.03);
        };
       //Verhaltenbereich __________________________________________________________________________________________________________________________________________________________________
       class DIARSC(Zeusfenster,InfoFrameBehaviour): DIARSC(normal,RscFrame)
       {
            idc = 11010;
            sizeEx = 0.04;
            shadow = 0;
            colorText[] = {1, 1, 1, 1};
            text = "Set Behaviour ?"; //--- ToDo: Localize;
            x = X_CENTERED(0.34);
     	      y = Y_CALC(0.465);
            w = W_SIZE(0.34);
            h = H_SIZE(0.11);
       };
       class DIARSC(Zeusfenster,InfoframeCheckboxBehaviour): DIARSC(normal,RscFrame)
       {
            idc = 11011;
            sizeEx = 0.04;
            shadow = 0;
            colorText[] = {1, 1, 1, 1};
            text = ""; //--- ToDo: Localize;
            x = X_CALC(0.528);
            y = Y_CALC(0.510);
            w = W_SIZE(0.025);
            h = H_SIZE(0.03);
       };
       class DIARSC(Zeusfenster,CheckBoxBehaviour): DIARSC(normal,Checkboxes)
       {
          style = 2098;
          idc = 11012;
          x = X_CALC(0.53);
          y = Y_CALC(0.514);
       	  w = W_SIZE(0.019);
       	  h = H_SIZE(0.021);
          colorText[] = {0, 0, 0, 1}; // checkbox unchecked color
        	colorTextSelect[] = {0, 1, 0, 1}; // checkbox checked color

          strings[] = {"\a3\Ui_f\data\IGUI\Cfg\Actions\ico_ON_ca.paa"};
        	onCheckBoxesSelChanged = "[1,1] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,BehaveInfoText): DIARSC(normal,RscText)
       {
   	     idc = 11013;//9800
   	     text = "Behaviour-Mode:";
          colorBackground[] = {0, 0, 0, 0};
   	     x = X_CALC(0.575);
   	     y = Y_CALC(0.492);
   	     w = W_SIZE(0.09);
   	     h = H_SIZE(0.02);
       };
       class DIARSC(Zeusfenster,ListBoxBehave): DIARSC(normal,Combo)
       {
         idc = 11014;
         colorBackground[] = {0,0,0,0.6};
         x = X_CALC(0.58);
         y = Y_CALC(0.514);
         w = W_SIZE(0.1);
         h = H_SIZE(0.02);
         onLBSelChanged = "";
       };
       class DIARSC(Zeusfenster,CombatInfoText): DIARSC(normal,RscText)
       {
   	     idc = 11015;//9800
   	     text = "Combat-Mode:";
         colorBackground[] = {0, 0, 0, 0};
   	     x = X_CALC(0.705);
   	     y = Y_CALC(0.492);
   	     w = W_SIZE(0.08);
   	     h = H_SIZE(0.02);
       };
       class DIARSC(Zeusfenster,ListBoxCombat): DIARSC(normal,Combo)
       {
         idc = 11016;
         colorBackground[] = {0,0,0,0.6};
         x = X_CALC(0.71);
         y = Y_CALC(0.514);
         w = W_SIZE(0.1);
         h = H_SIZE(0.02);
         onLBSelChanged = "";
       };
       //SetFuel_______________________________________________________________________________________________________________________________________________________________
       class DIARSC(Zeusfenster,InfoframeFuel): DIARSC(normal,RscFrame)
       {
            idc = 11017;
            sizeEx = 0.04;
            shadow = 2;
            colorText[] = {1, 1, 1, 1};
            text = "Set Fuel ?"; //--- ToDo: Localize;
            x = X_CENTERED(0.34);
     	      y = Y_CALC(0.572);
            w = W_SIZE(0.34);
            h = H_SIZE(0.08);
       };
       class DIARSC(Zeusfenster,InfoframeCheckboxFuel): DIARSC(normal,RscFrame)
       {
            idc = 11018;
            sizeEx = 0.04;
            shadow = 0;
            colorText[] = {1, 1, 1, 1};
            text = ""; //--- ToDo: Localize;
            x = X_CALC(0.528);
            y = Y_CALC(0.605);
            w = W_SIZE(0.025);
            h = H_SIZE(0.03);
       };
       class DIARSC(Zeusfenster,CheckBoxFuel): DIARSC(normal,Checkboxes)
       {
          style = 2098;
          idc = 11019;
          x = X_CALC(0.53);
          y = Y_CALC(0.608);
       	  w = W_SIZE(0.019);
       	  h = H_SIZE(0.021);
          colorText[] = {0, 0, 0, 1}; // checkbox unchecked color
        	colorTextSelect[] = {0, 1, 0, 1}; // checkbox checked color

          strings[] = {"\a3\Ui_f\data\IGUI\Cfg\Actions\ico_ON_ca.paa"};
        	onCheckBoxesSelChanged = "[1,2] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,SliderbarFuel): DIARSC(normal,Slider)
       {
  	      idc = 11020;
          x = X_CALC(0.58);
          y = Y_CALC(0.608);
          w = W_SIZE(0.18);
          h = H_SIZE(0.025);
          color[] = {1, 1, 1, 1};
        	colorActive[] = {1, 1, 1, 1};
        	colorDisabled[] = {0.3, 0.3, 0.3, 1};
  	      onSliderPosChanged = "[3] spawn MSOT_dlg_fnc_setGroupControl";
       };
       class DIARSC(Zeusfenster,InfoTextFuel): DIARSC(normal,RscText)
       {
          idc = 11021;//9800
          style = 2;
          text = "10";
          colorBackground[] = {0, 0, 0, 1};
          x = X_CALC(0.765);
          y = Y_CALC(0.607);
          w = W_SIZE(0.06);
          h = H_SIZE(0.03);
        };
    };
};
