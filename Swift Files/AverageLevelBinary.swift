public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
func averageOfLevels(_ root: TreeNode?) -> [Double] {
    var output : [Double] = []
    var queue : [TreeNode?] = []
    if root == nil {return output}
    queue.append(root)

    while !queue.isEmpty{
        var length = queue.count
        var average = 0.0
        for i in 0..<length{
            var current = queue.removeFirst()
            var value = current?.val ?? 0
            average += Double(value)
            if let left = current?.left{
                queue.append(left)
            }
            if let right = current?.right{
                queue.append(right)
            }
        }
        average /= Double(length)
        output.append(average)
    }
    return output      
}