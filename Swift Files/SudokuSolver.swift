func solveSudoku(_ board: inout [[Character]]) {
    if board.count == 0 {return}
    helper(&board)

    for i in 0..<board.count{
        print(board[i])
    }


}

func helper(_ board: inout [[Character]]) -> Bool{

     //Add number into blank spots and check board
    for i in 0..<board.count{
        for j in 0..<board[i].count{
            let char = board[i][j]
            if char == "."{
                var number = 1

                while number <= 9 { //find a number that does not break the rules
                    var stringNum = "\(number)"
                    var value = Character(stringNum)
                    if checkBoard(board,i,j,value) {
                        board[i][j] = value

                        if helper(&board) {return true}
                        else{
                            board[i][j] = "."
                        }

                    }
                    number += 1
                    
                }

                return false


            }
            
        }
    }
    return true
}

func checkBoard(_ board: [[Character]],_ i: Int,_ j: Int,_ n: Character) -> Bool{
    var board = board
    board[i][j] = n
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