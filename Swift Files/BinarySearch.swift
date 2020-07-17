func binarySearch(_ array: [Int],_ target: Int) -> Int{
    if array.count == 0 {return -1}
    var start = 0
    var end = array.count - 1
  

    while start <= end{
         var half = (start + end) / 2
         if target == array[half]{
            return half
        }else if target < array[half]{
            end = half - 1
        }else{
            start = half + 1
        }
    }
    return -1
}

print(binarySearch([1,2,4,5], 8))