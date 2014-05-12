if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
execVM "newspawn\newspawn_main.sqf";
} else {
titleText ["Please Donate at www.civil-gaming.nl\nand contact Rythron for the location!", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;

[] ExecVM "newspawn\newspawn_main.sqf";
};