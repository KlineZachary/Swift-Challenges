func prodArray(array: [Int]) -> [Int]{
    var output : [Int] = []
    for num in array{
        var prod = 1
        for numTwo in array{
            if num != numTwo{
                prod *= numTwo
            }
        }
        output.append(prod)
    }
    return output
}

print(prodArray(array: [0,6,7,8]))
