class Test{
    Static totalTests := 0
    Static totalPassed := 0

    __New(desc, ref, params*){
        this.funcRef := ref
        this.desc := desc
        this.params := params
    }

    expectToBe(expectedResult){
        result := this.funcRef.Call(this.params*)
        if(result = expectedResult){
            returnStr := % "Test: '" . this.desc . "' passed"
            Test.totalTests++
            Test.totalPassed++
            return returnStr
        }else{
            returnStr := % "Test: '" . this.desc . "' ***FAILED***"
            Test.totalTests++
            return returnStr
        }
    }

    report(){
        returnStr := % "`r`n" . Test.totalPassed . " of " . Test.totalTests . " tests passed."
        if(Test.totalTests != Test.totalPassed){
            returnStr := % returnStr . "`r`nSOME TESTS FAILED. SEE OUTPUT ABOVE."
        }
        return returnStr
    }
}