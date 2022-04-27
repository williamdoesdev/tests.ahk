class Tests{
    expectToBe(function, params, expectedResult){
        result := function.Call(params[1], params[2])
        if(result = expectedResult){
            msgbox, yes!
        }else{
            msgbox, no!
        }
    }
}