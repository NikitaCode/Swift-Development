import UIKit

func loveCalculator (yourName : String, theirName : String) -> String {
    
    let loveScore = arc4random_uniform(101)
    
    if loveScore > 80 {
        return "Your love score is \(loveScore). You love each other like mouse do cheese"
    }
    else if loveScore > 40 && loveScore <= 80 {
        return "Your love score is \(loveScore). You love each other like Cola and Mentos"
    }
    else {
        return "Your love score \(loveScore). Your love together is like T-seires and pewdiepie"
    }
}

print(loveCalculator(yourName: "Nikita Sherbakov", theirName: "Jane Doe"))
