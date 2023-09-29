; Yep almost perfect

mouseSpeed := 10

#if GetKeyState("ScrollLock", "T")
    LShift::
        mouseSpeed += 15
        KeyWait LShift
        mouseSpeed -= 15
    return

; Move Up
	NumpadUp::
    	Numpad8::
		{
			MouseMove 0, % -mouseSpeed, 0, R
    		}
	return	

; Move Right
	NumpadRight::
	Numpad6::
		{
			MouseMove % +mouseSpeed, 0, 0, R
    		}
	return
	
; Move Down
	NumpadDown::
	Numpad2::
		{
			MouseMove 0, % +mouseSpeed, 0, R
    		}
	return

; Move Left	
	NumpadLeft::
	Numpad4::
		{
			MouseMove % -mouseSpeed, 0, 0, R
		}
	return

; Left Mouse Button
	NumpadHome::
	Numpad7::
    		MouseClick, Left, , , 1, 0, D
    		KeyWait, NumpadHome
    		KeyWait, Numpad7
    		MouseClick, Left, , , 1, 0, U
	return
	
; Right Mouse Button
	NumpadPgUp::
	Numpad9::
		MouseClick, Right, , , 1, 0, D
	    	KeyWait, NumpadPgUp
	    	KeyWait, Numpad9
	    	MouseClick, Right, , , 1, 0, U
	return
	
; Middle Mouse Button
	NumpadClear::
	Numpad5::
		{
			SendInput {MButton}
		}
	return
	
; Scroll Up
	NumpadSub::SendInput {WheelUp}

; Scroll Down
	NumpadAdd::SendInput {WheelDown}

; Side Mouse Button Foward
	NumpadMult::SendInput {XButton2}

; Side Mouse Button Back 
	NumpadDiv::SendInput {XButton1}	

#if
