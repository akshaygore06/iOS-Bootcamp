
import UIKit

func calculateBMI(weightInKg : Double, heightInMeter : Double) -> Double {
    let bmi = weightInKg / (heightInMeter * heightInMeter)
    return bmi
}

let bmiResult = calculateBMI(weightInKg: 75, heightInMeter: 1.5)

print(bmiResult)
