import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var result: String = "0"
    @State private var currentOperator: String? = nil
    @State private var previousValue: Double? = nil
    @State private var isEnteringNewNumber: Bool = true

    var body: some View {
        GeometryReader { geometry in
            let buttonWidth = geometry.size.width * 0.18 // Adjusted button width for landscape
            let buttonHeight = geometry.size.height * 0.12 // Adjusted button height for landscape
            
            ZStack {
                Color(.black)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: geometry.size.height * 0.02) { // Spacing between rows
                    // Display area for input and result
                    VStack(alignment: .trailing, spacing: 8) {
                        Text(input)
                            .font(.title2)
                            .foregroundColor(.gray)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        
                        Text(result)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, minHeight: geometry.size.height * 0.15)
                    .background(Color.black.opacity(0.2))
                    
                    // Row for AC button, aligned to the left
                    HStack {
                        RectangleButton(label: "AC", color: Color(hex: "#C59C55"), width: buttonWidth, height: buttonHeight) {
                            clear()
                        }
                        .padding(.trailing, geometry.size.width * 0.65)// Pushes the AC button to the left
                    }
                    .padding(.bottom, geometry.size.height * 0.01)
                    
                    // Main buttons with adjusted sizes for landscape
                    VStack(spacing: geometry.size.height * 0.02) {
                        HStack(spacing: geometry.size.width * 0.04) {
                            RectangleButton(label: "sin", width: buttonWidth, height: buttonHeight) { calculateTrigonometricFunction("sin") }
                            RectangleButton(label: "cos", width: buttonWidth, height: buttonHeight) { calculateTrigonometricFunction("cos") }
                            RectangleButton(label: "tan", width: buttonWidth, height: buttonHeight) { calculateTrigonometricFunction("tan") }
                            RectangleButton(label: "÷", width: buttonWidth, height: buttonHeight) { applyOperator("÷") }
                        }
                        HStack(spacing: geometry.size.width * 0.04) {
                            RectangleButton(label: "7", width: buttonWidth, height: buttonHeight) { addDigit("7") }
                            RectangleButton(label: "8", width: buttonWidth, height: buttonHeight) { addDigit("8") }
                            RectangleButton(label: "9", width: buttonWidth, height: buttonHeight) { addDigit("9") }
                            RectangleButton(label: "×", width: buttonWidth, height: buttonHeight) { applyOperator("×") }
                        }
                        HStack(spacing: geometry.size.width * 0.04) {
                            RectangleButton(label: "4", width: buttonWidth, height: buttonHeight) { addDigit("4") }
                            RectangleButton(label: "5", width: buttonWidth, height: buttonHeight) { addDigit("5") }
                            RectangleButton(label: "6", width: buttonWidth, height: buttonHeight) { addDigit("6") }
                            RectangleButton(label: "-", width: buttonWidth, height: buttonHeight) { applyOperator("-") }
                        }
                        HStack(spacing: geometry.size.width * 0.04) {
                            RectangleButton(label: "1", width: buttonWidth, height: buttonHeight) { addDigit("1") }
                            RectangleButton(label: "2", width: buttonWidth, height: buttonHeight) { addDigit("2") }
                            RectangleButton(label: "3", width: buttonWidth, height: buttonHeight) { addDigit("3") }
                            RectangleButton(label: "+", width: buttonWidth, height: buttonHeight) { applyOperator("+") }
                        }
                        HStack(spacing: geometry.size.width * 0.04) {
                            RectangleButton(label: "0", width: buttonWidth, height: buttonHeight) { addDigit("0") }
                            RectangleButton(label: ".", width: buttonWidth, height: buttonHeight) { addDigit(".") }
                            RectangleButton(label: "=", color: Color(hex: "#C59C55"), width: buttonWidth * 2 + geometry.size.width * 0.04, height: buttonHeight) {
                                calculateResult()
                            }
                        }
                    }
                }
                .padding(.top, geometry.size.height * 0.01)
            }
        }
    }

    // MARK: - Button Action Methods
    
    private func addDigit(_ digit: String) {
        if isEnteringNewNumber {
            result = digit
            isEnteringNewNumber = false
        } else {
            result += digit
        }
        input += digit
    }

    private func applyOperator(_ op: String) {
        if let previousValue = previousValue, let currentValue = Double(result), let currentOperator = currentOperator {
            result = calculate(previousValue, with: currentValue, using: currentOperator)
        }
        
        previousValue = Double(result)
        currentOperator = op
        input += " \(op) "
        isEnteringNewNumber = true
    }

    private func clear() {
        input = ""
        result = "0"
        currentOperator = nil
        previousValue = nil
        isEnteringNewNumber = true
    }

    private func calculateResult() {
        if let previousValue = previousValue, let currentValue = Double(result), let currentOperator = currentOperator {
            result = calculate(previousValue, with: currentValue, using: currentOperator)
            self.previousValue = Double(result)
            input = ""
        }
        currentOperator = nil
        isEnteringNewNumber = true
    }

    private func calculateTrigonometricFunction(_ function: String) {
        if let value = Double(result) {
            switch function {
            case "sin":
                result = String(CalculatorCore.sine(value))
            case "cos":
                result = String(CalculatorCore.cosine(value))
            case "tan":
                result = String(CalculatorCore.tangent(value))
            default:
                result = "Error"
            }
            input = "\(function)(\(value))"
            isEnteringNewNumber = true
        }
    }

    // Helper function to perform calculations
    private func calculate(_ firstValue: Double, with secondValue: Double, using operatorSymbol: String) -> String {
        switch operatorSymbol {
        case "+":
            return String(CalculatorCore.add(firstValue, to: secondValue))
        case "-":
            return String(CalculatorCore.subtract(firstValue, from: secondValue))
        case "×":
            return String(CalculatorCore.multiply(firstValue, by: secondValue))
        case "÷":
            return secondValue != 0 ? String(CalculatorCore.divide(firstValue, by: secondValue)) : "Error"
        default:
            return "Error"
        }
    }
}

#Preview {
    ContentView()
}
