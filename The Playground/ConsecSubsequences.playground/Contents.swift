class Solution {
    func isPossible(_ nums: [Int]) -> Bool {
        if nums.count < 3 {return false}
        var freqMap : [Int:Int] = [:]
        var hypotheticalMap : [Int:Int] = [:]
        
        for num in nums{
           freqMap[num] = (freqMap[num] ?? 0) + 1
        }
        
        for num in nums{
            if freqMap[num] == 0 {continue}
            
            if let value = hypotheticalMap[num]{
                if value > 0{
                    hypotheticalMap[num]! -= 1
                    hypotheticalMap[num + 1] =  (hypotheticalMap[num + 1] ?? 0) + 1
                    
                }else if (freqMap[num + 1] ?? 0 > 0 && freqMap[num + 2] ?? 0 > 0){
                    freqMap[num + 1]! -= 1
                    freqMap[num + 2]! -= 1
                    hypotheticalMap[num + 3]! += 1
                }else{
                    return false
                }
            }
        }
        return true
    }
}

let output = Solution()
print(output.isPossible([1,2,3,4,4,5]))
 
