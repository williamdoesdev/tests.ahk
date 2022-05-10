# Tests.ahk
A simple testing library for AutoHotKey.

# Usage
The intended way of uses this library is by creating a new instance of the test class for each test you want to run. For example:
```
new Test("Expect 1 + 1 = 2", 1 + 1).expectToBe(2)
```
The above snippet tests the expression 1 + 1 and expects the result to be 2. In this example, the expectToBe method returns the string "Test: 'Expect 1 + 1 = 2' passed". It also adds to two static variables in the Test class: total tests and total tests passed. These are used to create a report once all tests have been run.

The Test class has a constructor which takes two arguments. The first argument is a description of the test, and the second argument is the expression that should be tested. 
