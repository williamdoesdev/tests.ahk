#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include tests.ahk
#Include ..\..\logger\logger.ahk\logger.ahk
debug := new Logger({showLevel: false})

debug.log( new Test("1 + 3 should be 4", TestClass.sum(1, 3)).expectToBe(4) )
debug.log( new Test("should be true", false).expectToBe(true) )
debug.log( Test.report() )

class TestClass{
    sum(a, b){
        return a + b
    }
}

msgbox