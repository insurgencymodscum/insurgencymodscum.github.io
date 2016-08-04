---
layout: post
title: '[CODE] AutoHotKey: Keyboard Shortcuts AHK Script'
date: '2013-01-19'
author: insmodscum
tags:
- Insurgency Mod Scum
- OT-Noted
- OT-PROTIP
blogger_id: tag:blogger.com,1999:blog-7256856399250838035.post-6965676040383434795
blogger_orig_url: http://insurgencymod.blogspot.com/2013/01/pro-tip-must-have-autohotkey-keyboard.html
---

~~~
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ^ = ctrl
; ! = alt

; Lock 
^!l::DllCall("LockWorkStation")

; Shutdown
^!s::
MsgBox, 52, Warning, Computer will shut down. OK?
IfMsgBox, Yes, Run, shutdown -s -f -t 0
Return

; Minimize
^!d::WinMinimizeAll
^!m::WinMinimize,A

; Transparent
^!Space::WinSet, Transparent, 125, A
^!Space UP::WinSet, Transparent, OFF, A

; Always on top
^!a::Winset, AlwaysOnTop, Toggle,A

; Volume
^!NumPadSub::Send {Volume_Up 3}
^!NumpadAdd::Send {Volume_Down 3}
^!NumpadEnter::Send {Volume_Mute}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

^`::
Input, TextEntry1, L1,{Esc}{Enter}{F1}{Down}{Up}
endKey=%ErrorLevel%
Input, TextEntry2, L1 T1,{Esc}{Enter}
timeout=%ErrorLevel%
entry=%TextEntry1%%TextEntry2%
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if entry=cp                                    ; cp
{
    run cmd                                    ; command prompt
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=ca                            ; ca
{
    run calc                                ; calculator
}   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=we                            ; we
{
    run explorer.exe                        ; windows explorer
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=ws                            ; ws
{
    run \[PATH\]\\serviwin.exe            ; ServiWin
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=lo                            ; lo
{
    run \[PATH\]\\LibreOfficePortable\\LibreOfficePortable.exe        ; libreoffice
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=ss                            ; ss
{
    run \[PATH\]\\FSCapture\\FSCapture.exe                            ; fscapture screenshots
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=ar                            ; ar
{
    run \[PATH\]\\SysInternalsSuite\\autoruns.exe                        ; autoruns
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=cc                            ;cc
{
    run \[PATH\]\\CCleaner\\CCleaner.exe                            ; ccleaner
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=df                            ;df
{
    run \[PATH\]\\YADFR.EXE                            ; duplicates finder
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=wc                            ; wc
{
    SetTitleMatchMode 2
    IfWinExist, Total Commander
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\TC\\totalcmd.exe    ;total commander
    }
    SetTitleMatchMode 1
    }
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=np                            ; np
{
    SetTitleMatchMode 2
    IfWinExist, Notepad++                    ; notepad++
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\Notepad++\\notepad++.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=st                            ;st
{
    SetTitleMatchMode 2
    IfWinExist, Sublime Text                ; sublime text
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\Sublime Text\\sublime_text.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=pe                            ; pe
{
    SetTitleMatchMode 2
    IfWinExist, Process Explorerr            ; process explorer
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\SysInternalsSuite\\procexp.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=es                            ; es
{
    SetTitleMatchMode 2
    IfWinExist, Everything                    ; everything search
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\EverythingPortable\\Everything.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=mm                            ; mm
{
    SetTitleMatchMode 2
    IfWinExist, FreePlane                    ; freeplane
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\FreeplanePortable\\FreeplanePortable.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
else if entry=kn                                ; kn
{
    SetTitleMatchMode 2
    IfWinExist, KeyNoteNF                ; keynotenf
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\KeyNoteNF\\KeyNoteNF.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=gc                            ; gc
{
    SetTitleMatchMode 2
    IfWinExist, Google Chrome                ; google chrome
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\GoogleChromePortable\\GoogleChromePortable.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=ff                            ; ff
{
    SetTitleMatchMode 2
    IfWinExist, Firefox                    ; firefox
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\FirefoxPortable\\FirefoxPortable.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=bt                            ; bt
{
    SetTitleMatchMode 2
    IfWinExist, Tixati Portable                ; tixati
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\TixatiPortable\\tixati_windows.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=mb                            ; mb
{
    SetTitleMatchMode 2
    IfWinExist, MusicBee                    ; musicbee
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\MusicBeePortable\\MusicBee.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=tc                            ; tc
{
    SetTitleMatchMode 2
    IfWinExist, TrueCrypt                    ; truecrypt
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\TrueCrypt\\TrueCrypt.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=vb                            ; vb
{
    SetTitleMatchMode 2
    IfWinExist, VirtualBox                    ; virtual box
    {
        WinActivate
    }
    else
    {   
        Run \[PATH\]\\VirtualBox\\VirtualBox.exe
    }
    SetTitleMatchMode 1
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if entry=tm                            ; tm
{
    SetTitleMatchMode 2
    IfWinExist, Task Manager                ; windows task manager
    {
        WinActivate
    }
    else
    {   
        Run C:\\Windows\\System32\\taskmgr.exe
    }
    SetTitleMatchMode 1
}
Return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
~~~

---

IMSID487AAC6D2DC8017FCFCB86B187414BFEE13DCB95