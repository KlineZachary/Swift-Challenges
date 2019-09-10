import Foundation
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var output : [Int] = []
    var nums2 = nums2
    for i in 0..<nums1.count{
        for j in 0..<nums2.count{
            if(nums1[i] == nums2[j]){
                output.append(nums1[i])
                nums2.remove(at: j)
                break
            }
            
        }
    }
    return output
}
print(intersect([1,2,2,3], [2]))
