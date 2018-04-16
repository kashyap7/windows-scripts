#include <Constants.au3>

AutoItSetOption("WinTitleMatchMode", $OPT_MATCHANY) ;2

WinActivate("[TITLE: - Google Chrome;CLASS:Chrome_WidgetWin_1]")

Example()

Func Example()
    ; Retrieve the window title of the active window.
    Local $sText = WinGetTitle("[ACTIVE]")

    ; Display the window title.
	Send("^l"); In FF puts focus on url field.
	Send("^c"); Copy the contents of the field to clipboard.
	$url=ClipGet(); Read the text from clipboard.
	MsgBox($MB_SYSTEMMODAL, "", $url)
EndFunc   ;==>Example