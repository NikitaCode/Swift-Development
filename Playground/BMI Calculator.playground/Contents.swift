import UIKit

// My Mass is 42.8 kg
// My Height 1.57 m
func bmiCalculator(yourMass : Double, yourHeight : Double) -> String {
    let bmiCalculation = yourMass / pow(yourHeight, 2)
    
    if bmiCalculation > 25 {
        return "Your total BMI calculation is \(bmiCalculation). You are over weigth sorry"
    }
    else if bmiCalculation > 18 {
        return "Your total BMI calculation is \(bmiCalculation). You are the normal weigth, good job"
    }
    else {
        return "Your total BMI calculation is \(bmiCalculation). You are under weigth, your a victoria secret model now woohooo"
    }
}
print(bmiCalculator(yourMass: 42.8, yourHeight: 1.57))
