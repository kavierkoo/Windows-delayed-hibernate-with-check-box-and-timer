Secs := 10
MsgBox,4,, Hibernate Now?
IfMsgBox, Yes
{
	run Hibernating.vbs
	SetTimer, CountDown, 1000
	MsgBox, 1, System Shutdown,System will hibernate in %Secs% sec, %Secs%
	IfMsgBox,Cancel
	{
		run cancel.vbs
		MsgBox,0,,  Hibernation Cancelled
		ExitApp
	}
	
	SetTimer, CountDown, Off
	run hibernated.vbs
	run shutdown -h

}
IfMsgBox, No
{
	ExitApp
}


CountDown:
Secs -= 1
ControlSetText,Static1,System will hibernate in %Secs% sec,System Shutdown ahk_class #32770
Return