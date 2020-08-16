func bSearch(_ array: [Int],_ num: Int) -> Int { //return index of element
    if array.count == 0 {return -1}
    var start = 0
    var end = array.count 

    while start < end{
        let middle = (start + end) / 2
        if num == array[middle] {return middle}
        else if num < array[middle] {
            end = middle - 1
        }else if num > array[middle]{
            start = middle + 1
        }
    }
    return -1
}

print(bSearch([1,2,3,4,5], 3))