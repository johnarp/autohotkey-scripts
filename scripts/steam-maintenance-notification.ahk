; Steam Server Maintenance Notification

; \\\ DEFAULT SETTINGS:
; \\\ - Maintenance: Tuesday at 5:30 PM
; \\\ - Checks: Every 10 Seconds

; \\\ NOTICE:
; \\\ - It's best to have the script run at startup.
; \\\ - To do so, use the startup folder or Task Scheduler.



; --------------------------------------------------



; Change according to your timezone.
; -------------------------
target := "17:30"

; Used by CheckTime() to ensure the notification only appears once.
; -------------------------
triggered := false

; Checks every 10 seconds.
; -------------------------
SetTimer(CheckTime, 10000)



; Main function.
; -------------------------
CheckTime()
{
    global target, triggered

    ; Used when resetting so it happens only once when the time equals midnight.
    ; -------------------------
    static lastTime := ""

    time := FormatTime(, "HH:mm")
    day := FormatTime(, "WDay")

    ; Resets after midnight.
    ; -------------------------
    if (time != lastTime && time = "00:00")
        triggered := false

    ; When everything lines up. Also, 3 = Tuesday.
    ; -------------------------
    if (day = 3 && time = target && !triggered)
    {
        ; If you changed the target time from 30 minutes before, maybe you should adjust the message here.
        ; -------------------------
        MsgBox "⚠️ WARNING: Upcoming Steam maintenance in 30 minutes!"
        triggered := true
    }
    lastTime := time
}

; For testing purposes. CTRL ALT T
; -------------------------
^!t::
{
    MsgBox "⚠️ WARNING: Upcoming Steam maintenance in 30 minutes!"
}