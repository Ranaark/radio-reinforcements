ScriptName RadioReinforcementsScript

int bKeyPressed
int iButton
int iGo
int iOtherMenu

Begin GameMode

if bKeyPressed != IsKeyPressed 48 ;	B
	set bKeyPressed to IsKeyPressed 48 ;	B
	if bKeyPressed ;	Button Pressed
		set iGo to 1
		ShowMessage RadioReinforcementsMenu
	endif
endif

if iGo
	set bKeyPressed to 0
else
	return
endif

set iButton to GetButtonPressed
if iButton == -1 ;	No button pressed yet
	return
elseif iOtherMenu == 0 && iButton == 0;	First Menu
	set iOtherMenu to 1
	ShowMessage RadioReinforcementsUnitMenu
	return
elseif iOtherMenu == 1 ;	Second Menu
	set iOtherMenu to 0
	if iButton == 0 ;	1 Unit
		player.PlaceAtMe RadioSpawnerAlly 1
	elseif iButton == 1 ;	2 Units
		player.PlaceAtMe RadioSpawnerAlly 2
	elseif iButton == 2 ;	3 Units
		player.PlaceAtMe RadioSpawnerAlly 3
	elseif iButton == 3 ;	4 Units
		player.PlaceAtMe RadioSpawnerAlly 4
	elseif iButton == 4 ;	5 Units
		player.PlaceAtMe RadioSpawnerAlly 5
	elseif iButton == 5 ;	6 Units
		player.PlaceAtMe RadioSpawnerAlly 6
	elseif iButton == 6 ;	7 Units
		player.PlaceAtMe RadioSpawnerAlly 7
	elseif iButton == 7 ;	8 Units
		player.PlaceAtMe RadioSpawnerAlly 8
	endif
endif
set iGo to 0

End