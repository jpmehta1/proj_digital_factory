import Testing
@testable import Digital_Factory

struct Digital_FactoryTests {
    
    @Test func testAddition() {
        let result = CalculatorCore.add(5, to: 3)
        #expect(result == 8, "Addition test failed")
    }

    @Test func testSubtraction() {
        let result = CalculatorCore.subtract(10, from: 4)
        #expect(result == 6, "Subtraction test failed")
    }

    @Test func testMultiplication() {
        let result = CalculatorCore.multiply(6, by: 7)
        #expect(result == 42, "Multiplication test failed")
    }

    @Test func testDivision() {
        let result = CalculatorCore.divide(10, by: 2)
        #expect(result == 5, "Division test failed")
    }
    
    @Test func testDivisionByZero() {
        let result = CalculatorCore.divide(10, by: 0)
        #expect(result == 0, "Division by zero should return 0")
    }

    @Test func testSineFunction() {
        let result = CalculatorCore.sine(.pi / 2)
        #expect(abs(result - 1) < 0.0001, "Sine function test failed")
    }

    @Test func testCosineFunction() {
        let result = CalculatorCore.cosine(0)
        #expect(abs(result - 1) < 0.0001, "Cosine function test failed")
    }

    @Test func testTangentFunction() {
        let result = CalculatorCore.tangent(.pi / 4)
        #expect(abs(result - 1) < 0.0001, "Tangent function test failed")
    }
}

