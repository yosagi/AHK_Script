#NoEnv
#Include <VMR>
#Include <RapidHotkey>
#Include <OSD>
SendMode Input
SetNumLockState AlwaysOff
if (FileExist("Script.ico")) {
     Menu, Tray, Icon, Script.ico
}
Global OSD_BG:=0x361D37
Global OSD_FG:=0xF4F3F2

showOSD("VMR-Volumeonly Activated")

;===============================================Media Hotkeys===============================================
Volume_Up::showOSD("Gain: " . VMR_incGain(,1) ) ;Increase Bus[0] gain
Volume_Down::showOSD("Gain: " . VMR_decGain(,1)) ;Decrease Bus[0] gain

;=============================================Functions=============================================
showOSD(txt){
     OSD_spawn(txt,OSD_BG,OSD_FG)
}
