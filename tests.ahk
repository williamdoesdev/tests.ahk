class Test{
    Static totalTests := 0
    Static totalPassed := 0

    __New(desc, result){
        this.desc := desc
        this.result := result
    }

    expectToBe(expectedResult){
        if(this.result = expectedResult){
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

    expectObject(){
        if(IsObject(this.result)){
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

    expectObjectWithKey(expectedKey){
        if(IsObject(this.result)){
            keyFound := 0
            For key, value in this.result{
                if(key = expectedKey){
                    keyFound := 1
                }
            }
            if(keyFound = 1){
                returnStr := % "Test: '" . this.desc . "' passed"
                Test.totalTests++
                Test.totalPassed++
                return returnStr
            }else{
                returnStr := % "Test: '" . this.desc . "' ***FAILED***"
                Test.totalTests++
                return returnStr  
            }
        }else{
            returnStr := % "Test: '" . this.desc . "' ***FAILED***"
            Test.totalTests++
            return returnStr
        }
    }

    expectInteger(){
        result := this.result
        if result is integer
        {
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

    expectFloat(){
        result := this.result
        if result is float
        {
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

        expectAlpha(){
        result := this.result
        if result is alpha
        {
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

    expectGreaterThan(expectedResult){
        if(this.result > expectedResult){
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

    expectGreaterThanEqualTo(expectedResult){
        if(this.result >= expectedResult){
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

    expectLessThan(expectedResult){
        if(this.result < expectedResult){
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

    expectLessThanEqualTo(expectedResult){
        if(this.result <= expectedResult){
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