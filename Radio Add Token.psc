ScriptName RadioAddItemScript

int DoOnce

Begin GameMode
	if DoOnce != 5
		player.AddItem RadioReinforcementToken 1 1
		ShowMessage RadioTokenAddedMessage
		StopQuest RadioAddItemQuest
		set DoOnce to 5
	endif
End