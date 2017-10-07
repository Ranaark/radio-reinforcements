ScriptName CrRadioAllyScript

float ZAng

int iButton

Begin OnLoad
	PlaceAtMe RadioSpawnPulse
	Set ZAng to (GetAngle Z + GetHeadingAngle Player)
	SetAngle Z ZAng
End

Begin OnActivate
	ShowMessage RadioDismissMenu
End

Begin GameMode
	if GetDead
		PlaceAtMe RadioDeathFire
		Disable
		MarkForDelete
	endif
	
	set iButton to GetButtonPressed
	if iButton == -1
		return
	elseif iButton == 0
		PlaceAtMe RadioSpawnPulse
		Disable
		MarkForDelete
	elseif iButton == 1
		;	Close
	endif
End