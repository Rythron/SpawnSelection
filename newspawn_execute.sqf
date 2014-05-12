sleep 3;
waitUntil {!dialog};
systemChat ('Pick a location to spawn if no just select exit!');
cutText ["You spawned Random!\nSelect a spawn location on the left!","PLAIN"];
[] ExecVM "newspawn\newspawn_main.sqf";