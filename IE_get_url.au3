#include <MsgBoxConstants.au3>
#include <IE.au3>

Local $oIE = _IEAttach("","instance")
; This is my first script
MsgBox($MB_SYSTEMMODAL, "My First Script!", _IEPropertyGet($oIE,"locationurl"))