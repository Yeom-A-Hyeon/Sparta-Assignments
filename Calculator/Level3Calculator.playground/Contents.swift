
class Calculator {
    
    let add = AddOperation()
    let sub = SubtractOperation()
    let mul = MultiplyOperation()
    let div = DivideOperation()
    
    func calculate(oper: String, firstNumber: Double, secondNumber: Double ) -> Double {
        
        switch oper {
        case "+":
            return add.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "-":
            return sub.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "*":
            return mul.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        case "/":
            return div.operate(firstNumber: firstNumber, secondNumber: secondNumber)
        default:
            return 0
        }
    }
}
class AddOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }
}
class SubtractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }
}
class MultiplyOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }
}
class DivideOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber / secondNumber
    }
}
let calculator = Calculator()

let addResult = calculator.calculate(oper: "+", firstNumber: 3, secondNumber: 1)// 덧셈 연산
let subtractResult = calculator.calculate(oper: "-", firstNumber: 3, secondNumber: 1)// 뺄셈 연산
let multiplyResult = calculator.calculate(oper: "*", firstNumber: 3, secondNumber: 1)// 곱셈 연산
let divideResult = calculator.calculate(oper: "/", firstNumber: 3, secondNumber: 1)// 나눗셈 연산

print("addResult : \(addResult)")
print("subtractResult : \(subtractResult)")
print("multiplyResult : \(multiplyResult)")
print("divideResult : \(divideResult)")
