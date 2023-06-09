; Limit the maximum threads
#MaxThreadsPerHotkey 2

; Do not allow multiple script instances
#SingleInstance

; Input mode converts characters sent to keycodes
SendMode "Input"

{
    ; Activate the key mappings only when the current window is Dota 2
    #HotIf WinActive("ahk_class SDL_app ahk_exe dota2.exe")

    ; Map LWin (left Windows key) to `Home` to avoid accidentally returning to desktop
    ; You can use RWin to switch to desktop instead.
    Lwin::Home

    ; Map left Alt + Tab to End key to avoid accidentally returning to desktop
    <!Tab::End

    ; Map CapsLock to number 0 to avoid frequent blinking of CapsLock indicator light
    CapsLock::0

    ; Map ` key to number 9 to avoid a bug in Dota 2 where Alt + ` cannot be used
    `::9

    ; Directional move, bind to XButton2 (mouse side button 2), `SC01A` is left bracket
    ; Warning: Please note that Send is a macro function, which may not align with ethical and Valve's attitudes.
    ;XButton2::Send "{Blind}{SC01A Down}{RButton}{SC01A Up}"
}
