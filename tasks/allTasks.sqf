
private ["_task_arr","_task_name","_task_Type","_task_description_long","_task_description_forHUD","_task_mark_pos_obj","_task_priority"];

params ["_idx","_state"];


//TaskTypes findet man unter "https://community.bistudio.com/wiki/Arma_3_Tasks_Overhaul" (ganz runter scrollen)


_chk_state = toUpper(_state);_task_arr = [];_task_name = "";_task_Type = "";_task_description_long = "";_task_description_forHUD = "";
_task_priority = 2;_task_mark_pos_obj = "";

switch(_idx)do
{
  case 1:{
           _task_name = "Task01";

           _task_description_long = "Velegen Sie zur CIA-Basis!";

           _task_description_forHUD = "Verlegung zur CIA-Basis";

           _task_mark_pos_obj = "marker_4";

           _task_Type  = "move";

         };
  case 2:{
            _task_name = "Task02";

            _task_description_long = "Aufgrund der aktuellen Situation besteht die Möglichkeit, dass die Basis angegriffen wird! Ergreifen Sie alle zum Schutz der Basis erforderlichen Maßnahmen und schützen Sie die Mitarbeiter und sich selbst! HINWEIS: Die Innenbeleuchtung der Basis lässt sich am kleinen Sendegebäude im hinteren Bereich der Basis ausschalten! Möglicherweise verschafft Ihnen das einen kleinen Vorteil! ACHTUNG: Rechnen Sie mit Selbstmordattentätern sowohl zu Fuß als auch mit Fahrzeugen!!!";

            _task_description_forHUD = "Sicherung und Schutz der Basis!";

            _task_mark_pos_obj = "marker_4";

            _task_Type  = "defend";

         };
  case 3:{
            _task_name = "Task03";

            _task_description_long = "Sammeln Sie Ihre Ausrüstung zusammen und begeben Sie sich umgehend zum Konsulat! Den Botschafter zu finden und in Sicherheit zu bringen, ist primäres Ziel! Sofern Sie weitere überlebende Bürger unseres Landes antreffen, retten Sie diese ebenfalls und bringen Sie zu uns in die Basis! Gemäß den Einsatzregeln haben Sie, sofern Sie beschossen werden, die Freigabe zum Schußwaffengebrauch! Nehmen Sie Leichensäcke mit! Vielleicht brauchen Sie sie!";

            _task_description_forHUD = "Finden Sie den Botschafter!";

            _task_mark_pos_obj = "marker_4";

            _task_Type = "search";
         };
  case 4:{
            _task_name = "Task04";

            _task_description_long = "Auf dem Laptop des Botschafters befinden sich geheimen Daten! Des Weiteren hatte der Botschafter zur Vorbereitung seiner geplanten Treffen Akten mit sensiblen Informationen bei sich! Finden Sie den Laptop und die Akten und sichern sie diese!";

            _task_description_forHUD = "Finden und Sichern von Informationen!";

            _task_mark_pos_obj = "";

            _task_Type = "documents";

         };
  case 5:{
           _task_name = "Task05";

           _task_description_long = "Evakuieren Sie die Mitarbeiter von CIA und DSS! Wir haben ein Taxi für sie organisiert! Die Exfiltration findet südwestlich der Stadt Athanos statt! Näher an Ihre gegenwärtige Position ist leider nicht möglich! Die Feindlage zwischen Ihrem Standort und dem Abholpunkt ist unklar!";

           _task_description_forHUD = "Evakuierung!";

           _task_mark_pos_obj = "marker_4";

           _task_Type = "getout";
         };
  case 6:{
            _task_name = "Task05";

            _task_description_long = "Verlegen Sie in sichere Gewässer!";

            _task_description_forHUD = "Flucht von der Insel";

            _task_mark_pos_obj = "marker_4";

            _task_Type = "move";
         };
};

// DONT TOUCH **************************************************************************************************************************************************************************************

if(count (missionNamespace getVariable ["msot_task_store",[]]) > 0)then{_task_priority = 1;};

switch(typeName _task_mark_pos_obj)do
{
  case "STRING":{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,_task_mark_pos_obj],_task_mark_pos_obj,_chk_state,_task_priority,true,_task_Type];};
  case "OBJECT":{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,""],_task_mark_pos_obj,_chk_state,_task_priority,true,_task_Type];};
  case "ARRAY":{_task_arr = [player,[_task_name],[_task_description_long,_task_description_forHUD,""],_task_mark_pos_obj,_chk_state,_task_priority,true,_task_Type];};
  default {
            hint format ["FEHLER IN TASK AUFRUF: TASK_MARK_POS_OBJ - VARIABLE >>> %1",(typeName _task_mark_pos_obj)];
            diag_log format ["FEHLER IN TASK AUFRUF: TASK_MARK_POS_OBJ - VARIABLE >>> %1",(typeName _task_mark_pos_obj)];
          };
};
If(count _task_arr > 0)then
{
  [[_task_name,_this],_task_arr] spawn MSOT_task_fnc_setTask;
};
