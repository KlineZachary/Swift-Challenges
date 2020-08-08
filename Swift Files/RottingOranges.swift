// In a given grid, each cell can have one of three values:

//     the value 0 representing an empty cell;
//     the value 1 representing a fresh orange;
//     the value 2 representing a rotten orange.

// Every minute, any fresh orange that is adjacent (4-directionally) to a rotten orange becomes rotten.

// Return the minimum number of minutes that must elapse until no cell has a fresh orange.  If this is impossible, return -1 instead.


func orangesRotting(_ grid: [[Int]]) -> Int {
    var output = 0
    var grid = grid
    let directions = [[0,1],[1,0],[-1,0],[0,-1]]
    var fresh = Set<String>()
    var rotten = Set<String>()

    if grid.count == 0 {return -1}
    for i in 0..<grid.count{
        for j in 0..<grid[i].count{
            if grid[i][j] == 1{
                fresh.insert("\(i)\(j)")
            }else if grid[i][j] == 2{
                rotten.insert("\(i)\(j)")
            }
        }
    }

    while fresh.count > 0{
        var infected = Set<String>()
        for coord in rotten{
            let xCoord = Int(String(coord[coord.startIndex]))!
            let yCoord = Int(String(coord[coord.index(coord.startIndex, offsetBy: 1)]))!
            
            for direction in directions{
                var nextI = direction[0]
                var nextJ = direction[1]
                if fresh.contains("\(nextI + xCoord)\(nextJ + yCoord)"){
                    fresh.remove("\(nextI + xCoord)\(nextJ + yCoord)")
                    infected.insert("\(nextI + xCoord)\(nextJ + yCoord)")
                }
            }
        }

        if infected.count == 0 {return -1}
        rotten = infected
        output += 1
    }

    return output
        
}


print(orangesRotting([[2,1,1],[1,1,0],[0,1,1]]))