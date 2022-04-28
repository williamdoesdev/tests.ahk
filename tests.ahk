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