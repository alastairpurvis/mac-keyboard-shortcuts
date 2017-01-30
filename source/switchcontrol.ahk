;-----------------------------------------
; Mac keyboard to Windows Key Mappings
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

#Space::Send {LWin}

LWin & q::Send !{F4}

; --------------------------------------------------------------
; media/function keys all mapped to the right option key
; --------------------------------------------------------------

RAlt & F7::SendInput {Media_Prev}
RAlt & F8::SendInput {Media_Play_Pause}
RAlt & F9::SendInput {Media_Next}
~LWin Up:: return

F4::LWin
F3::Run taskmgr

; swap left command/windows key with left alt
;LWin::LAlt
;LAlt::LWin ; add a semicolon in front of this line if you want to disable the windows key

; Eject Key
;F13::SendInput {Insert}

; F13-15, standard windows mapping
F5::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F9::SendInput {Pause}

;F16-19 custom app launchers, see http://www.autohotkey.com/docs/Tutorial.htm for usage info
F16::Run http://twitter.com
F17::Run http://tumblr.com
F18::Run http://www.reddit.com
F19::Run https://facebook.com

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

LWin & LButton::Send ^{Click}
Ctrl & LButton::Send #{Click}

; Make Ctrl + S work with cmd (windows) key
LWin & s::Send ^{s}

LWin & [::Send {XButton1}

LWin & ]::Send {XButton2}

LWin & n::Send ^{n}

LWin & l::Send ^{l}

; Selecting
LWin & a::Send ^{a}

; Copying
LWin & c::Send ^{c}

; Pasting
LWin & v::Send ^{v}

; Pasting
LWin & j::Send ^{j}
LWin & h::Send ^{h}

LWin & p::Send ^{p}

; Cutting
LWin & x::Send ^{x}

; Opening
LWin & o::Send ^{o}

; Finding
LWin & f::Send ^{f}

; Undo
LWin & z::Send ^{z}

LWin & r::Send ^{r}

; Redo
LWin & y::Send ^{y}

; New tab
LWin & t::Send ^{t}

; close tabs
LWin & w::Send ^{w}

LWin & m::WinMinimize A
	

; Close windows (cmd + q to Alt + F4)
;LWin & q::Send !{F4}

; Remap Windows + Tab to Alt + Tab.
LWin & Tab::Send {LAlt}{Tab}{LAlt}




; -----------------------------------s---------------------------
; OS X keyboard mappings for special cahars
; --------------------------------------------------------------

; Map Alt + L to @
!l::SendInput {@}

; Map Alt + N to \
+!7::SendInput {\}

; Map Alt + N to ©
!g::SendInput {©}

; Map Alt + o to ø
!o::SendInput {ø}

; Map Alt + 5 to [
!5::SendInput {[}

; Map Alt + 6 to ]
!6::SendInput {]}

; Map Alt + E to €
!e::SendInput {€}

; Map Alt + - to –
!-::SendInput {–}

; Map Alt + 8 to {
!8::SendInput {{}

; Map Alt + 9 to }
!9::SendInput {}}

; Map Alt + - to ±
!+::SendInput {±}

; Map Alt + R to ®
!r::SendInput {®}

; Map Alt + N to |
!7::SendInput {|}

; Map Alt + W to ?
!w::SendInput {?}

; Map Alt + N to ~
!n::SendInput {~}


; --------------------------------------------------------------
; Custom mappings for special chars
; --------------------------------------------------------------


; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

; Show Web Developer Tools with cmd + alt + i
#!i::Send {F12}

; Show source code with cmd + alt + u
#!u::Send ^u

Rwin::return

#IfWinActive
