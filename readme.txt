Installation Steps

http://opendayz.net/threads/release-scroll-menu-pick-your-own-spawn-point-and-loadout.13143/

1. At the bottom of your init.sqf add this:
Code:
p2_newspawn = compile preprocessFileLineNumbers "newspawn\newspawn_execute.sqf";
waitUntil {!isNil ("PVDZ_plr_LoginRecord")};
if (dayzPlayerLogin2 select 2) then
{
    player spawn p2_newspawn;
};

If you are running Epoch then replace "PVDZ_plr_LoginRecord" with "PVDZE_plr_LoginRecord"
Other mods may use a different login variable such as dayzLoginRecord. If you are not sure what the correct login variable for the mod you are using is just check the client files in @Dayz\Addons\dayz_code\init\publicEH.sqf
2. In dayz_server\compile\server_playerSetup.sqf
Find this line: dayzPlayerLogin2 = [_worldspace,_state];
Replace it with: dayzPlayerLogin2 = [_worldspace,_state,_randomSpot];
3. Place the \newspawn\ folder in the root of your mission.pbo
4. Open newspawn_main.sqf and classes_main.sqf and edit line 3 to include your donor's playerIDs if you wish.
5. Open classes_main.sqf and adjust the classes menus and their corresponding files in the \classes\ folder to your liking. You can modify or remove the class loadouts, skins and vehicles. See FAQ


Disable Anti-TP:
1. Open init.sqf and find:
Code:
[] execVM "\z\addons\dayz_code\system\antihack.sqf";
2. Add // to the start of the line or delete it.
Disable Anti-TP on Epoch:
Add this line to your init.sqf below dayz_maxLocalZombies = 30;
Code:
DZE_teleport = [99999,99999,99999,99999,99999];
If you are using antihax:

1. Find:

_cMenu = ['','RscMainMenu','RscMoveHigh','#WATCH', ...];
2. Add the command menu names you are using. Here are the default names I used:

_cMenu = ['#USER:newspawn','#USER:classes','#USER:Page4','#USER:Donator','#USER:Peasant'];
Also make sure block all command menus is false:
BLOCK ALL CMDMenus */ _BCM = false;
