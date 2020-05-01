If(!hasInterface) exitWith {};
#include "msot_components.hpp"
If(isClass(configfile >> "CfgMods" >> "ace"))then
{
  private _loudoutnumberarr = [0,1,2,3,4,5,6,7,8,9];
  {
    private _load_it = switch(_x)do
                       {
                         case 0:{["Empty (GerMulti)",
                                  [[],[],[],["U_mas_ger_B_CombatUniform_multi",[]],["V_mas_ger_PlateCarrier1_rgr",[]],
                                  ["B_mas_ger_Kitbag_m",[]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",
                                  ["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 1:{["Assault Light (GerMulti)",
                                  [["arifle_SPAR_01_snd_F","muzzle_snds_m_snd_F","ACE_acc_pointer_green","optic_ERCO_snd_F",["150Rnd_556x45_Drum_Sand_Mag_F",150],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_CombatUniform_multi",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["HandGrenade",3,1],["9Rnd_45ACP_Mag",5,8],["150Rnd_556x45_Drum_Sand_Mag_F",3,150],
                                  ["150Rnd_556x45_Drum_Sand_Mag_Tracer_F",2,150]]],[],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",
                                  ["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 2:{["Assault Heavy (GerMulti)",
                                  [["arifle_SPAR_03_snd_F","muzzle_snds_B_snd_F","ACE_acc_pointer_green","optic_Arco",["20Rnd_762x51_Mag",20],[],"bipod_01_F_snd"],
                                  [],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_mas_ger_B_CombatUniform_multi",
                                  [["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_bloodIV_500",2],["ACE_morphine",15],
                                  ["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],["V_mas_ger_PlateCarrier1_rgr",
                                  [["HandGrenade",3,1],["9Rnd_45ACP_Mag",3,8],["20Rnd_762x51_Mag",10,20],["ACE_20Rnd_762x51_Mag_Tracer",4,20]]],
                                  [],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 3:{["Sniper Midrange (GerMulti)",
                                  [["srifle_DMR_02_sniper_F","muzzle_snds_338_sand","ACE_acc_pointer_green","optic_AMS_snd",["ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag",20],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_GhillieSuit",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["optic_Nightstalker",1],["HandGrenade",2,1],["9Rnd_45ACP_Mag",5,8],
                                  ["ACE_20Rnd_762x67_Mk248_Mod_0_Mag",13,20]]],["B_mas_ger_Kitbag_m",[["ACE_bloodIV_500",2],["ACE_fieldDressing",10],["ACE_epinephrine",5],
                                  ["ACE_morphine",10],["ACE_Tripod",1],["ACE_Sandbag_empty",3],["ACE_wirecutter",1],
                                  ["ACE_20Rnd_762x67_Mk248_Mod_0_Mag",2,20]]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",
                                  ["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 4:{["Sniper Longrange (GerMulti)",
                                  [["srifle_DMR_02_sniper_F","muzzle_snds_338_sand","ACE_acc_pointer_green","optic_AMS_snd",["ACE_20Rnd_762x67_Berger_Hybrid_OTM_Mag",20],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_GhillieSuit",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["optic_Nightstalker",1],["HandGrenade",2,1],["9Rnd_45ACP_Mag",5,8],
                                  ["ACE_20Rnd_762x67_Mk248_Mod_0_Mag",13,20]]],["B_mas_ger_Kitbag_m",[["ACE_bloodIV_500",2],["ACE_fieldDressing",10],["ACE_epinephrine",5],
                                  ["ACE_morphine",10],["ACE_Tripod",1],["ACE_Sandbag_empty",3],["ACE_wirecutter",1],
                                  ["ACE_20Rnd_762x67_Mk248_Mod_0_Mag",2,20]]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",
                                  ["Laserbatteries",1],[],""],["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 5:{["Medic (GerMulti)",
                                  [["arifle_SPAR_01_snd_F","muzzle_snds_m_snd_F","ACE_acc_pointer_green","optic_ERCO_snd_F",["150Rnd_556x45_Drum_Sand_Mag_F",150],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_CombatUniform_multi",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["ACE_fieldDressing",10],["HandGrenade",3,1],["9Rnd_45ACP_Mag",5,8],
                                  ["150Rnd_556x45_Drum_Sand_Mag_F",3,150],["150Rnd_556x45_Drum_Sand_Mag_Tracer_F",2,150]]],["B_mas_ger_Kitbag_m",[["ACE_fieldDressing",40],
                                  ["ACE_bloodIV",5],["ACE_bloodIV_500",10],["ACE_epinephrine",20],["ACE_morphine",40]]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",
                                  ["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152_2","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 6:{["Spotter (GerMulti)",
                                  [["arifle_SPAR_01_snd_F","muzzle_snds_m_snd_F","ACE_acc_pointer_green","optic_ERCO_snd_F",["150Rnd_556x45_Drum_Sand_Mag_F",150],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_FullGhillie_sard",
                                  [["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_bloodIV_500",2],["ACE_morphine",15],
                                  ["ACE_MapTools",1],["ACE_Flashlight_XL50",1]]],["V_mas_ger_PlateCarrier1_rgr",[["HandGrenade",3,1],["9Rnd_45ACP_Mag",5,8],
                                  ["150Rnd_556x45_Drum_Sand_Mag_F",3,150],["150Rnd_556x45_Drum_Sand_Mag_Tracer_F",2,150]]],["B_mas_ger_Kitbag_m",[["ACE_fieldDressing",5],
                                  ["ACE_epinephrine",3],["ACE_morphine",5],["ACE_Tripod",1],["ACE_SpottingScope",1],["ACE_Sandbag_empty",3],["ACE_wirecutter",1],
                                  ["ACE_bloodIV_500",2],["30Rnd_556x45_Stanag_green",5,30]]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",
                                  ["Laserbatteries",1],[],""],["ItemMap","B_UavTerminal","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 7:{["Spotter Funk (GerMulti)",
                                  [["arifle_SPAR_01_snd_F","muzzle_snds_m_snd_F","ACE_acc_pointer_green","optic_ERCO_snd_F",["150Rnd_556x45_Drum_Sand_Mag_F",150],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_CombatUniform_multi",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["HandGrenade",3,1],["9Rnd_45ACP_Mag",5,8],["150Rnd_556x45_Drum_Sand_Mag_F",3,150],
                                  ["150Rnd_556x45_Drum_Sand_Mag_Tracer_F",2,150]]],["TFAR_rt1523g_big",[["ACE_wirecutter",1],["ACE_Tripod",1],["ACE_SpottingScope",1],
                                  ["ACE_Sandbag_empty",1]]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 8:{["UAV Operator (GerMulti)",
                                  [["arifle_SPAR_01_snd_F","muzzle_snds_m_snd_F","ACE_acc_pointer_green","optic_ERCO_snd_F",["150Rnd_556x45_Drum_Sand_Mag_F",150],
                                  [],"bipod_01_F_snd"],[],["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],
                                  ["U_mas_ger_B_CombatUniform_multi",[["ACE_fieldDressing",25],["ACE_epinephrine",5],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],
                                  ["ACE_bloodIV_500",2],["ACE_morphine",15],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_Chemlight_IR",1,1],["SmokeShell",4,1]]],
                                  ["V_mas_ger_PlateCarrier1_rgr",[["HandGrenade",3,1],["9Rnd_45ACP_Mag",5,8],["150Rnd_556x45_Drum_Sand_Mag_F",3,150],
                                  ["150Rnd_556x45_Drum_Sand_Mag_Tracer_F",2,150]]],["B_UAV_01_backpack_F",[]],"H_mas_ger_opscorn_gog","G_Balaclava_TI_G_blk_F",
                                  ["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","B_UavTerminal","TFAR_anprc152_2","ItemCompass","ACE_Altimeter","NVGogglesB_grn_F"]]
                                 ]
                                };
                         case 9:{["Pilot",
                                  [["SMG_01_F","muzzle_snds_acp","acc_flashlight_smg_01","optic_Holosight_smg_blk_F",["30Rnd_45ACP_Mag_SMG_01",25],[],""],[],
                                  ["hgun_ACPC2_F","muzzle_snds_acp","acc_flashlight_pistol","",["9Rnd_45ACP_Mag",8],[],""],["U_B_PilotCoveralls",
                                  [["ACE_fieldDressing",15],["ACE_epinephrine",3],["ACE_IR_Strobe_Item",1],["ACE_EarPlugs",1],["ACE_bloodIV_500",1],
                                  ["ACE_morphine",10],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["9Rnd_45ACP_Mag",1,8],["SmokeShellRed",3,1],
                                  ["ACE_Chemlight_HiWhite",2,1]]],["V_Rangemaster_belt",[["9Rnd_45ACP_Mag",1,8],["30Rnd_45ACP_Mag_SMG_01",3,25]]],
                                  ["B_Parachute",[]],"H_PilotHelmetFighter_I_E","G_Balaclava_TI_G_blk_F",["Laserdesignator_03","","","",["Laserbatteries",1],[],""],
                                  ["ItemMap","ItemGPS","TFAR_anprc152","ItemCompass","ACE_Altimeter",""]]
                                 ]
                                };
                       };
    _load_it call ace_arsenal_fnc_addDefaultLoadout;
    sleep 1;
  }forEach _loudoutnumberarr;
};
