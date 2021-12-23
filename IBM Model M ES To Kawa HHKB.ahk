;This is a file for changing the layout of a IBM Model M ES layout to something closer to an HHKB pro 2 layout. 
;The first idea was to put the fn key on the right shift. But it was identified, because of 2 key rollover (I think), that the combination of left shift, right shift and { doesn't output anything.
;Thus, the second idea became to put the fn key on the right control, which seemed to work with a combination of more than 2 desired keys.
;Actually, the worst case works perfectly with the Right Control fn, which is to hold Caps (as control), LShift, RControl (as fn), and and arrow key to select a region and moving by steps/words.

;OBS::: Didn't test if this solution works for gaming, or any case that needs multiple arrows to be outputted together. It seems not to, actually.

; Turn Caps Lock into a Control key.
Capslock::Control

;Arrow keys. Work alone, or with shift or control, or both pressed, i.e. Ctrl shift + arrows.
Control & [:: UpWithFnKey()
Control & ':: RightWithFnKey()
Control & `;:: LeftWithFnKey()
Control & /:: DownWithFnKey()

;Pg up and pg down. Only work alone, i.e. they don't work with LControl or Shift
Control & l:: PgUpWithFnKey()
Control & .:: PgDownWithFnKey()

;Home & end. They work alone and with Shift
Control & k:: HomeWithFnKey()
Control & ,:: EndWithFnKey()
return

HomeWithFnKey()
{
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("Shift") == 1)
        {
            Send, +{Home}
        }
        else
        {
            Send, {Home}
        }
    }
}

EndWithFnKey()
{
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("Shift") == 1)
        {
            Send, +{End}
        }
        else
        {
            Send, {End}
        }
    }
}

PgUpWithFnKey()
{
    if(GetKeyState("RControl") == 1)
    {
        Send, {PgUp}
    }
}

PgDownWithFnKey()
{
    if(GetKeyState("RControl") == 1)
    {
        Send, {PgDn}
    }
}

UpWithFnKey()
{    
    ;If 'fn' is pressed
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 0)
        {        
            Send, {Up}            
        }
        else if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 1)
        {        
            Send, +{Up}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 0)
        {
            Send, ^{Up}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 1)
        {
            Send, ^+{Up}
        }
    }    
    return
}

RightWithFnKey()
{    
    ;If 'fn' is pressed
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 0)
        {        
            Send, {Right}
        }
        else if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 1)
        {        
            Send, +{Right}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 0)
        {
            Send, ^{Right}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 1)
        {
            Send, ^+{Right}
        }
    }    
    return
}

LeftWithFnKey()
{    
    ;If 'fn' is pressed
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 0)
        {        
            Send, {Left}
        }
        else if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 1)
        {        
            Send, +{Left}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 0)
        {
            Send, ^{Left}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 1)
        {
            Send, ^+{Left}
        }
    }    
    return
}

DownWithFnKey()
{    
    ;If 'fn' is pressed
    if(GetKeyState("RControl") == 1)
    {
        if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 0)
        {        
            Send, {Down}
        }
        else if(GetKeyState("LControl") == 0 && GetKeyState("Shift") == 1)
        {        
            Send, +{Down}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 0)
        {
            Send, ^{Down}
        }
        else if(GetKeyState("LControl") == 1 && GetKeyState("Shift") == 1)
        {
            Send, ^+{Down}
        }
    }    
    return
}