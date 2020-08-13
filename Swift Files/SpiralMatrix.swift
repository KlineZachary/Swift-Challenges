func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var output: [Int] = []
    if matrix.count == 0 {return output}
    var top = 0, bottom = matrix.count - 1, left = 0 , right = matrix[0].count - 1
    var totalNums = matrix.count * matrix[0].count
    while top <= bottom && left <= right{
        if output.count >= totalNums {break}
        for i in left...right{
            output.append(matrix[top][i])
        }
        top += 1
        if output.count >= totalNums {break}

        for i in top...bottom{
            output.append(matrix[i][right])
        } 
        right -= 1
        if output.count >= totalNums {break}

        for i in (left...right).reversed(){
            output.append(matrix[bottom][i])
        } 
        bottom -= 1
        if output.count >= totalNums {break}

        for i in (top...bottom).reversed(){
            output.append(matrix[i][left])
        }
        left += 1
        
    }
    return output
        
}

print(spiralOrder([
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
]))