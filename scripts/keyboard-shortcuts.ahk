; Keys
; --------------------
; ^ = Ctrl
; ! = Alt
; # = Win



; Open Calculator
; --------------------
^!c::Run "calc"



; Open Notepad
; --------------------
^!n::Run "notepad"



; Window Identifier
; --------------------
^!w::
{
    MsgBox WinGetTitle("A")
}