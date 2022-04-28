#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include tests.ahk
#Include ..\logger.ahk\logger.ahk
debug := new Logger({showLevel: false})

debug.log( new Test("1 + 3 should be 4", func("sum"), 1, 3).expectToBe(4) )
debug.log( new Test("1 + 3 should be 4", func("sum"), 1, 3).expectToBe(3) )
debug.log( new Test("1 + 3 should be 4", func("sum"), 1, 3).expectToBe(4) )

sum(a, b){
    return a + b
}

class Foo{
    sum(a, b){
        return a + b
    }
}

foo := new Foo

ref := Foo.sum


debug.log( new Test("1 + 3 should be 4", ref, Foo, 1, 3).expectToBe(4) )
debug.log( Test.report() )

msgbox