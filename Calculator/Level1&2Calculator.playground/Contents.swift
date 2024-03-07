class Calculator {
    func calculate(oper: String, firstNum: Double, secondNum: Double) -> Double {
        
        switch oper {
        case "+":
            return firstNum + secondNum
        case "-":
            return firstNum - secondNum
        case "*":
            return firstNum * secondNum
        case "/":
            return firstNum / secondNum
        case "%":
            return Double(Int(firstNum) % Int(secondNum))
        default:
            return 0
        }
    }
}

let calculator = Calculator()
let plus = calculator.calculate(oper: "+", firstNum: 3, secondNum: 1)
let minus = calculator.calculate(oper: "-", firstNum: 3, secondNum: 1)
let multiply = calculator.calculate(oper: "*", firstNum: 3, secondNum: 1)
let divide = calculator.calculate(oper: "/", firstNum: 3, secondNum: 1)
let remain = calculator.calculate(oper: "%", firstNum: 3, secondNum: 1)

print(plus)
print(minus)
print(multiply)
print(divide)
print(remain)
