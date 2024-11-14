# Digital Factory Calculator

Digital Factory Calculator is a Swift-based calculator app that provides basic arithmetic operations as well as trigonometric functions (sin, cos, tan). The app is built with a SwiftUI user interface and a separate Objective-C core framework for calculations.

## Features

- **Basic Operations**: Addition, Subtraction, Multiplication, Division
- **Trigonometric Functions**: Sine, Cosine, Tangent
- **Error Handling**: Handles division by zero gracefully
- **Dynamic Layout**: Adapts to both portrait and landscape orientations
- **Unit Tests**: Core calculation functions are tested using Swift’s `@Test` macros

## Project Structure

- `Digital_Factory`: The main SwiftUI application with UI components.
- `CalculatorCore`: Objective-C framework that performs all calculator functions.
- `Digital_FactoryTests`: Contains unit tests for verifying calculator functionality.

## Getting Started

### Prerequisites

- **Xcode 15** or later
- **Swift 5.9** or later (for macro-based testing syntax)

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/Digital_Factory.git
    cd Digital_Factory
    ```
2. Open the project in Xcode:
    ```bash
    open Digital_Factory.xcodeproj
    ```

3. Select your preferred simulator or device and run the app.

## Usage

1. **Basic Calculations**: Tap numeric and operator buttons to perform calculations. Press the "=" button to calculate the result.
2. **Clear Button (AC)**: Tap the AC button to reset the current calculation.
3. **Trigonometric Calculations**: Use sin, cos, and tan buttons to calculate trigonometric functions. Input the angle in radians.
4. **Landscape Mode**: Rotate the device to switch orientations and see the app adjust dynamically.

## Testing

This project includes unit tests for verifying core functionality.

1. Open the **Test Navigator** in Xcode (⌘6).
2. Click the play button next to `DigitalFactoryTests` to run all tests, or run individual test methods.

### Test Cases Included

- **Arithmetic Operations**: Ensures correct results for addition, subtraction, multiplication, and division.
- **Trigonometric Calculations**: Verifies sin, cos, and tan functions.
- **Edge Cases**: Handles division by zero and precision for trigonometric results.

## License

MIT License. See `LICENSE` file for details.

## Author

Jeet P Mehta

---

Enjoy using the Digital Factory Calculator!
