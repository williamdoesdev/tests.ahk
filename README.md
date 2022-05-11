# Tests.ahk
A simple test class for AutoHotKey.

# Usage
The intended way of using this library is by creating a new instance of the test class for each test you want to run. For example:
```
new Test("Expect 1 + 1 = 2", 1 + 1).expectToBe(2)
```
The above snippet tests the expression 1 + 1 and expects the result to be 2. In this example, the expectToBe method returns the string "Test: 'Expect 1 + 1 = 2' passed". It also adds to two static variables in the Test class: total tests and total tests passed. These are used to create a report once all tests have been run.

The Test class has a constructor which takes two arguments. The first argument is a description of the test, and the second argument is the expression that should be tested. 

Once the test instance has been created, one of several "expect" methods can be called, such as expectToBe in the example above.

# "Expect" Methods
Multiple "expect" methods can be called to check for various conditions. 

| Method | Description |
| --- | --- |
| expectToBe() | Expect the provided expression to equal the expected expression. |
| expectException() | Expect the provided expression to equal an exception object. |
| expectObject() | Expect the provided expression to equal an object. |
| expectObjectWithKey() | Expect the provided expression to equal an object and to have the expected key. |
| expectInteger() | Expect the provided expression to equal an integer. |
| expectFloat() | Expect the provided expression to equal a float. |
| expectAlpha() | Expect the provided expression to equal a string composed only of alphabetical characters. |
| expectGreaterThan() | Expect the provided expression to be greater than the expected expression. |
| expectGreaterThanEqualTo() | Expect the provided expression to be greater than or equal to the expected expression. |
| expectLessThan() | Expect the provided expression to be less than the expected expression. |
| expectLessThanEqualTo() | Expect the provided expression to be less than or equal to the expected expression. |

# Report

The report method of the Test class returns a string listing how many total tests passed.
```
Test.report()
```
