#Include RegionWaitChange.ahk

Run, notepad ; open notepad
WinWait, Untitled - Notepad ; wait for window to exist

ControlSetText, Edit1 ; delete any current text
MsgBox, Notepad is empty`, press F12 to fill it with random text.

; monitor the region of 100px width and height from coordinate (10, 10):
RegionWaitChange(10, 10, 100, 100, "Untitled - Notepad")
; once the region changed the script will continue here:
MsgBox, Notepad has changed! (RegionWaitChange completed)

WinClose
ExitApp

F12::
VarSetCapacity(dots, 5000, Asc(".")) ; fill a variable with something
ControlSetText, Edit1, %dots%, Untitled - Notepad ; change the text on notepad artificially
dots = ; free variable
Return