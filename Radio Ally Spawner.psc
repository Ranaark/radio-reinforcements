ScriptName RadioSpawnerAllyScript

Int Fired

Float XPos
Float YPos
Float ZPos

Float Timer

Begin OnLoad

	Set Timer to Rand 0.1, 6
	Set ZPos to (GetPos Z + 1000)
	
End

Begin Gamemode

	Set XPos to (Player.GetPos X + Rand -512, 512)
	Set YPos to (Player.GetPos Y + Rand -512, 512)
	SetPos X XPos
	SetPos Y YPos	
	SetPos Z ZPos
	SetAngle X 90

	If Timer > 0
		Set Timer to (Timer - GetSecondsPassed)
	else
		If Fired == 0
			FireWeapon RadioSpawnerAllyWeapon
			Set Fired to 1
		else
			Disable
			MarkForDelete
		endif
	endif
	
End