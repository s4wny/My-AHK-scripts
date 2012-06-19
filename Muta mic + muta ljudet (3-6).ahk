; Muta / unmuta micen
Numpad3::
    SoundGet, MicState, MICROPHONE, MUTE, 4 ; Sparar ner i $MicState om micen är mutad. Den returnerar "mosatta" värdet, så ta emot värdet innan vi ändrar läge för att ge en fin if logik.

    SoundSet, +0, MICROPHONE, MUTE, 4   ; Mutar / unmutar min mic. +0 = muta/unmuta. 4 = rätt mic.

    if (MicState = "on")
        ToolTip, Micen är på!
    else
        ToolTip, Micen är mutad!


    Sleep, 1200
    ToolTip ; Tar bort tolltipet
return

; Muta allt ljud
Numpad6::
    Send {Volume_Mute}
return