; Muta / unmuta micen
Numpad3::
    SoundGet, MicState, MICROPHONE, MUTE, 4 ; Sparar ner i $MicState om micen �r mutad. Den returnerar "mosatta" v�rdet, s� ta emot v�rdet innan vi �ndrar l�ge f�r att ge en fin if logik.

    SoundSet, +0, MICROPHONE, MUTE, 4   ; Mutar / unmutar min mic. +0 = muta/unmuta. 4 = r�tt mic.

    if (MicState = "on")
        ToolTip, Micen �r p�!
    else
        ToolTip, Micen �r mutad!


    Sleep, 1200
    ToolTip ; Tar bort tolltipet
return

; Muta allt ljud
Numpad6::
    Send {Volume_Mute}
return