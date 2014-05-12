if (dayz_combat == 1) then {
titleText ["You can't select a spawn point while in combat.", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;
execVM "newspawn\newspawn_main.sqf";
} else {
titleText ["Spawning at selected location...", "PLAIN DOWN", 3];
player setPosATL [13855,11748.7,0.002];
showCommandingMenu '';
sleep 2;
titleText ["Spawned!\nThanks for your Donation and Trust in civiL gaming!", "PLAIN DOWN", 3];
sleep 5;
titleFadeOut 1;

//execVM "newspawn\locations\tukker.sqf";
};