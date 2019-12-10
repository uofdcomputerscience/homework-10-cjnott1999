import Foundation

// Implement an Error type. Make sure it has at least two values.
enum InputError: Error{
    case noInput
    case invalidInput
    case unreadableInput
}


// Implement a function that returns a Result of string or your error type
func inputChecker(input: String) -> Result<String, InputError>{
    if input == ""{
        return .failure(.noInput)
    }
    else {
        return .success("Input is valid")
    }
}

// Call your function in a way that will return an error result, and handle that error.
let failure = inputChecker(input: "")
switch failure {
    case .success(let output):
        print(output)
    case .failure(let error):
        print(error.localizedDescription)
}

// Call your function in a way that will return a success result, and handle the value.
let succcess = inputChecker(input: "anything else")
switch succcess {
    case .success(let output):
        print(output)
    case .failure(let error):
        print(error.localizedDescription)
}
