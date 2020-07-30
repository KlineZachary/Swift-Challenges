func isValidSudoku(_ board: [[Character]]) -> Bool {

    var seen = Set<String>()

    //Check row, column, 3x3 square validation
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            var char = board[i][j]
            if char != "."{
                if seen.contains("\(char) found in row \(i)") || 
                seen.contains("\(char) found in column \(j)") || 
                seen.contains("\(char) found in square \(i / 3) \(j/3)"){
                    return false
                }
                seen.insert("\(char) found in row \(i)")
                seen.insert("\(char) found in column \(j)")
                seen.insert("\(char) found in square \(i / 3) \(j/3)")

            }
            
        }
    }

    return true
}

print(isValidSudoku([
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]))