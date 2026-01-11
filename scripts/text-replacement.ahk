; Address
; --------------------
::addr::308 Negra Arroyo Lane



; Date
; --------------------
::date::
{
    Today := FormatTime(, "MMMM dd, yyyy")
    Send Today
}



; Time
; --------------------
::time::
{
    Now := FormatTime(, "hh:mm tt")
    Send Now
}