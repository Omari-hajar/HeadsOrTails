import UIKit

func tossCoin()-> String{
    let num: Int = Int.random(in: 0...1)
    if num == 0{
        return "Head"
    } else{
        return "Tail"
    }
}

//print(tossCoin())

func tossCoinMultipleTimes(num : Int) -> Double{
    var headCount: Int = 0
    
    for _ in 1...num{
        let toss = tossCoin()
        print(toss)
        if toss == "Head"{
            headCount += 1
        }
    }
    print("\(headCount) : \(num)")
    let result: Double = Double(headCount) / Double(num)

    return result
}

print(tossCoinMultipleTimes(num: 10))



