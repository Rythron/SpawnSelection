pathtonewspawn = "newspawn\locations\";
EXECscript1 = 'player execVM "'+pathtonewspawn+'%1"';

if ((getPlayerUID player) in ["12345678","0","0"]) then {
newspawn =
[
	["",false],
		["Select Spawn Point", [2], "#USER:Rythron", -5, [["expression", ""]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
  ];
};


if ((getPlayerUID player) in ["884925","1208681","146437"]) then { //Other donors without bases
   newspawn =
   [
     ["",false],
     ["Select Spawn Point", [2], "#USER:Donator", -5, [["expression", ""]], "1", "1"],
     ["", [-1], "", -5, [["expression", ""]], "1", "0"],
     ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
   ];
};

if (isNil "newspawn") then { //Non donors
   newspawn =
   [
     ["",false],
     ["Select Spawn Point", [2], "#USER:Peasant", -5, [["expression", ""]], "1", "1"],
     ["", [-1], "", -5, [["expression", ""]], "1", "0"],
     ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
   ];
};


Rythron =
[
	["",false],
		["Your Base", [2], "", -5, [["expression", format[EXECscript1,"rythron.sqf"]]], "1", "1"],
		["Balota", [3], "", -5, [["expression", format[EXECscript1,"balota.sqf"]]], "1", "1"],
		["Berezino", [4], "", -5, [["expression", format[EXECscript1,"berezino.sqf"]]], "1", "1"],
		["Cherno", [5], "", -5, [["expression", format[EXECscript1,"cherno.sqf"]]], "1", "1"],
		["Elektro", [6], "", -5, [["expression", format[EXECscript1,"elektro.sqf"]]], "1", "1"],
		["Kamenka", [7], "", -5, [["expression", format[EXECscript1,"kamenka.sqf"]]], "1", "1"],
		["Gorka", [8], "", -5, [["expression", format[EXECscript1,"gorka.sqf"]]], "1", "1"],
		["Grishino", [9], "", -5, [["expression", format[EXECscript1,"grishino.sqf"]]], "1", "1"],
		["Kabanino", [10], "", -5, [["expression", format[EXECscript1,"kabanino.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:Page4", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];


Donator =
[
	["",false],
		["Your Base", [2], "", -5, [["expression", format[EXECscript1,"donor.sqf"]]], "1", "1"],
		["Balota", [3], "", -5, [["expression", format[EXECscript1,"balota.sqf"]]], "1", "1"],
		["Berezino", [4], "", -5, [["expression", format[EXECscript1,"berezino.sqf"]]], "1", "1"],
		["Cherno", [5], "", -5, [["expression", format[EXECscript1,"cherno.sqf"]]], "1", "1"],
		["Elektro", [6], "", -5, [["expression", format[EXECscript1,"elektro.sqf"]]], "1", "1"],
		["Kamenka", [7], "", -5, [["expression", format[EXECscript1,"kamenka.sqf"]]], "1", "1"],
		["Gorka", [8], "", -5, [["expression", format[EXECscript1,"gorka.sqf"]]], "1", "1"],
		["Grishino", [9], "", -5, [["expression", format[EXECscript1,"grishino.sqf"]]], "1", "1"],
		["Kabanino", [10], "", -5, [["expression", format[EXECscript1,"kabanino.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:Page4", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Peasant =
[
	["",false],
		["Balota", [2], "", -5, [["expression", format[EXECscript1,"balota.sqf"]]], "1", "1"],
		["Berezino", [3], "", -5, [["expression", format[EXECscript1,"berezino.sqf"]]], "1", "1"],
		["Cherno", [4], "", -5, [["expression", format[EXECscript1,"cherno.sqf"]]], "1", "1"],
		["Elektro", [5], "", -5, [["expression", format[EXECscript1,"elektro.sqf"]]], "1", "1"],
		["Kamenka", [6], "", -5, [["expression", format[EXECscript1,"kamenka.sqf"]]], "1", "1"],
		["Kamyshovo", [7], "", -5, [["expression", format[EXECscript1,"kamyshovo.sqf"]]], "1", "1"],
		["Solnichniy", [8], "", -5, [["expression", format[EXECscript1,"solnichniy.sqf"]]], "1", "1"],
		["Your Base?", [9], "", -5, [["expression", format[EXECscript1,"donor1.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			/*["Next page", [12], "#USER:Page4", -5, [["expression", ""]], "1", "1"],*/
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

Page4 =
[
	["",false],
		["Kamyshovo", [2], "", -5, [["expression", format[EXECscript1,"kamyshovo.sqf"]]], "1", "1"],
		["Solnichniy", [3], "", -5, [["expression", format[EXECscript1,"solnichniy.sqf"]]], "1", "1"],
		["Komarovo", [4], "", -5, [["expression", format[EXECscript1,"komarovo.sqf"]]], "1", "1"],
		["Krasnostav", [5], "", -5, [["expression", format[EXECscript1,"krasnostav.sqf"]]], "1", "1"],
		["Pogorevka", [6], "", -5, [["expression", format[EXECscript1,"pogorevka.sqf"]]], "1", "1"],
		["Prigorodki", [7], "", -5, [["expression", format[EXECscript1,"prigor.sqf"]]], "1", "1"],
		["Pusta", [8], "", -5, [["expression", format[EXECscript1,"pusta.sqf"]]], "1", "1"],
		["Vybor", [9], "", -5, [["expression", format[EXECscript1,"vybor.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Previous Page", [12], "", -4, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:newspawn";