; Yep almost perfect

mouseSpeed := 10

#if GetKeyState("ScrollLock", "T")
    LShift::
        mouseSpeed += 15
        KeyWait LShift
        mouseSpeed -= 15
    return

; Up
	NumpadUp::
    Numpad8::
	{
	MouseMove 0, % -mouseSpeed, 0, R
    }
	return
	
; Right
	NumpadRight::
	Numpad6::
	{
	MouseMove % +mouseSpeed, 0, 0, R
    }
	return
	
; Down
	NumpadDown::
	Numpad2::
	{
	MouseMove 0, % +mouseSpeed, 0, R
    }
	return

; Left	
	NumpadLeft::
	Numpad4::
	{
	MouseMove % -mouseSpeed, 0, 0, R
	}
	return

; LMB
	NumpadHome::
	Numpad7::
    MouseClick, Left, , , 1, 0, D
    KeyWait, NumpadHome
    KeyWait, Numpad7
    MouseClick, Left, , , 1, 0, U
	return
	
; RMB
	NumpadPgUp::
	Numpad9::
    MouseClick, Right, , , 1, 0, D
    KeyWait, NumpadPgUp
    KeyWait, Numpad9
    MouseClick, Right, , , 1, 0, U
	return
	
; MMB
	NumpadClear::
	Numpad5::
		{
			SendInput {MButton}
			}
	return
	
; Scroll Up Down
	NumpadSub::SendInput {WheelUp}
	NumpadAdd::SendInput {WheelDown}

; Back 
	NumpadDiv::SendInput {XButton1}	

; Foward
	NumpadMult::SendInput {XButton2}

#if
