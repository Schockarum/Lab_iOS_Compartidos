let array = [2,1,2,2,4,1]

func majority(_ array: [Int]) -> Int {
    var res = (0,0)
    var count = 0
    for number in array {
        for arrayElement in array{
            if number == arrayElement{
                count += 1
            }
            if count > res.1{
                res = (number,count)
            }
        }
    }
    return res.0
}

print(majority(array))


let entero = 321

func tenToThe(_ y: Int) -> Int {
    var result = 10
    if y == 1{
        return 10
    }
    for _ in 2 ... y{
        result = result * 10
    }
    return result
}

func reverse(_ number: Int) -> Int{
    return reverseInner(number, index: 0)
}

func reverseInner(_ number: Int, index: Int) -> Int{
    var mostRightNumber = 0
    var copyNumber = number
    while copyNumber % 10 != 0{
        mostRightNumber += 1
        copyNumber -= 1
    }
    let nextNumber = copyNumber / 10
    return mostRightNumber * tenToThe(index) + reverseInner(nextNumber, index: index + 1)
}


print(reverse(entero))

