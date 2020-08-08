func solveSudoku(_ board: inout [[Character]]) {
    var seen = Set<String>()

    //Add all cells with a number value
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            var char = board[i][j]
            if char != "."{
                seen.insert("\(char) found in row \(i)")
                seen.insert("\(char) found in column \(j)")
                seen.insert("\(char) found in square \(i / 3) \(j/3)")

            }
            
        }
    }

     //Add number into blank spots and check
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            let char = board[i][j]
            if char == "."{
                var foundNumber = false
                var number = 1
                while !foundNumber && number <= 9{ //find a number that does not break the rules
                    var boardValueString = String("\(number)")
                    let boardValue = boardValueString[boardValueString.startIndex]
                    print(number)
                    if seen.contains("\(boardValue) found in row \(i)") || 
                    seen.contains("\(boardValue) found in column \(j)") || 
                    seen.contains("\(boardValue) found in square \(i / 3) \(j/3)"){
                        number += 1
                        continue
                    }else if !seen.contains("\(boardValue) found in row \(i)") && 
                    !seen.contains("\(boardValue) found in column \(j)") && 
                    !seen.contains("\(boardValue) found in square \(i / 3) \(j/3)"){
                        board[i][j] = boardValue
                        seen.insert("\(boardValue) found in row \(i)")
                        seen.insert("\(boardValue) found in column \(j)")
                        seen.insert("\(boardValue) found in square \(i / 3) \(j/3)")
                        foundNumber = true //end loop
                    }
                }


            }
            
        }
    }

    for i in 0..<board.count{
        print(board[i])
    }
}

var example = [[Character]]([
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
])
solveSudoku(&example)