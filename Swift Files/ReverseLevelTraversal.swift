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

func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    var output : [[Int]] = []
    var reverseOutput : [[Int]] = []

    var queue : [TreeNode?] = []
    if root == nil {return output}
    queue.append(root)

    while !queue.isEmpty{
        var length = queue.count
        var levelArray: [Int] = []
        for i in 0..<length{
            var current = queue.removeFirst()
            var value = current?.val ?? 0
            levelArray.append(value)
            if let left = current?.left{
                queue.append(left)
            }
            if let right = current?.right{
                queue.append(right)
            }
        }
        output.append(levelArray)
    }
    
    //reverse output
    for i in (0..<output.count).reversed(){
        reverseOutput.append(output[i])
    }

    return reverseOutput  
}