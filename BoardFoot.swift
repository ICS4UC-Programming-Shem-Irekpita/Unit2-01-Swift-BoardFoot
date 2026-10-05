import Foundation

// function with two parameters
func calculateBoardFoot(width: Double, height: Double) -> Double {
    let boardFootVolume = 144.0
    let length = boardFootVolume / (width * height)
    return length
}

// function with no parameter
func main() {
    print("Enter your Width: ", terminator: "")
    guard let widthInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines),
          let width = Double(widthInput) else {
        print("Error: Invalid input. Please enter valid numerical values.")
        return
    }

    print("Enter your Height: ", terminator: "")
    guard let heightInput = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines),
          let height = Double(heightInput) else {
        print("Error: Invalid input. Please enter valid numerical values.")
        return
    }

    if width <= 0 || height <= 0 {
        print("Enter a valid Number greater than 0")
        return
    }

    // function call with two values
    let length = calculateBoardFoot(width: width, height: height)
    print(String(format: "To get 1 board foot (144 in³), the length must be: %.2f inches", length))
}

// function call with no value
main()