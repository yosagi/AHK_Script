#NoEnv
#Include <VMR>
#Include <RapidHotkey>
#Include <OSD>
SendMode Input
SetNumLockState AlwaysOff
if (FileExist("Script.ico")) {
     Menu, Tray, Icon, Script.ico
}
OSD_spawn("AHK starting up..")

;===============================================Media Hotkeys===============================================
Volume_Up::showOSD("Gain: " . VMR_incGain(,1) ) ;Increase Bus[0] gain
Volume_Down::showOSD("Gain: " . VMR_decGain(,1)) ;Decrease Bus[0] gain

;=============================================Functions=============================================
showOSD(txt, OSD_Theme:=-1, OSD_Accent:=-1 ){
     OSD_spawn(txt,OSD_Theme,OSD_Accent)
}
