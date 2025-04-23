// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum ErrorClass : Error {
    case invalidInput
    case DivByZero
    case Unexpected
}

public class Calculator {
    
    public var a:Int = 0
    public var b:Int = 0
    
    public init() {
      print("sampl e ")
    }
    
    public func add() -> Int {
        return a + b
    }
    
    public func dif() -> Int {
        return a - b
    }
    public func div() throws -> Int {
        if b == 0 {
            throw ErrorClass.DivByZero
        }
        return b/a
    }
}


