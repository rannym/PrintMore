# PrintMore

A simple way to `print()` more while maintaining readability.

```swift
import PrintMore

//...
	printmore(.success, "Hello, World!")
	printmore(.notice, "An example notice message.", "Another message.")
//...
```

For example, the above would generate:
```
[ 📗 Success ] 
	📍 Example.swift 
	📍 example() 
	📍 Line 4 , column 11 .
	📝 Hello, World!
[ 📔 Notice ] 
	📍 Example.swift 
	📍 example() 
	📍 Line 5 , column 11 .
	📝 An example notice message.
	📝 Another message.
```
