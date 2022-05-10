#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include tests.ahk

msgbox, % new Test("Expect 1 + 3 = 4", TestClass.sum(1, 3)).expectToBe(4)
msgbox, % new Test("Expect true", true).expectToBe(true)
msgbox, % new Test("Expect object with key: testKey", {testKey: 1}).expectObjectWithKey("testKey")
msgbox, % new Test("Expect exception object", Exception("Test exception")).expectException(true)
msgbox, % Test.report()

class TestClass{
    sum(a, b){
        return a + b
    }
}
