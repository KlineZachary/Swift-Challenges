func generate(_ numRows: Int) -> [[Int]] {
    var output: [[Int]] = []
    if numRows == 0 {return output}
    output.append([1])

    for i in 1..<numRows{
        var prevRow = output[i - 1]
        var currentRow: [Int] = []
        currentRow.append(1)
        for j in 1..<i{
            currentRow.append(prevRow[j - 1] + prevRow[j])
        }

        currentRow.append(1)
        output.append(currentRow)
    } 

    return output      
}



print(generate(5))

