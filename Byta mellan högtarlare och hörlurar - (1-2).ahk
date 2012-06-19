Numpad1::                                                    ; När numpad 1 trycks ner körs detta block
    Run, RunDll32.exe shell32.dll`,Control_RunDLL mmsys.cpl`,`,0 ; Öppnar ljud kontrolls fönstret. "0" är vilken flik som ska öppnas. Tex ändras "0" till "1" öppnas inspelnings fliken istället för uppspelnings fliken.
    WinWaitActive, ahk_class #32770                              ; Vänta tills fönstret har öppnats. ahk_class #32770 tog jag reda på med "Autoit3 Window Spy"

    IfWinActive, ahk_class #32770                                ; Säkerhets check...
    {
        Send, {DOWN 1}{TAB}{TAB}{ENTER}{ALTDOWN}{F4}{ALTUP}          ; Väljer första enheten ({DOWN 1]) som standar enhet. Stänger sedan ner fönstret.
    }
 
    IfWinActive, ahk_class #32770  ; Var enheten redan standar kommer "egenskaper" fönstret att ha öppnats. Då har vi ett till fönster att stänga ner.
    {
        Send, {ALTDOWN}{F4}{ALTUP} ; Stänger fönstret
    }
return
 
Numpad2::
    Run, RunDll32.exe shell32.dll`,Control_RunDLL mmsys.cpl`,`,0
    WinWaitActive, ahk_class #32770

    IfWinActive, ahk_class #32770
    {
        Send, {DOWN 2}{TAB}{ENTER}{ALTDOWN}{F4}{ALTUP} ; Väljer andra enheten ({DOWN 2]}) som standard
    }

    IfWinActive, ahk_class #32770
    {
        Send, {ALTDOWN}{F4}{ALTUP}
    }
return