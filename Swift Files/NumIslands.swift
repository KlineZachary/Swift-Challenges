class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var numberIslands = 0
        if grid.count == 0 {return 0}
        
        for i in 0..<grid.count{

            for j in 0..<grid[i].count{

                //see if neighbors are one
                if grid[i][j] == "1"{
                    numberIslands += dfs(&grid, i, j)
                }

            }
        }
        return numberIslands
    }

    func dfs(_ grid: inout [[Character]],_ i: Int, _ j: Int) -> Int{
        //Gone out of bounds or the value we are on is water (a zero)
        if (i < 0 || i >= grid.count 
        || j < 0 || j >= grid[i].count 
        || grid[i][j] == "0"){
             return 0
        }

        //Set visited character to zero so we dont get duplicates
        grid[i][j] = "0"
        dfs(&grid, i + 1, j) //down
        dfs(&grid, i - 1, j)// up
        dfs(&grid, i, j + 1)// right
        dfs(&grid, i , j - 1)// left
        return 1
    }
}

print(Solution().numIslands([
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]))