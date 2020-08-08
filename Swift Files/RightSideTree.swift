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
func rightSideView(_ root: TreeNode?) -> [Int] {
    var output = [Int]()
    var queue = [TreeNode?]()
    var root = root
    if root == nil {return output}
    queue.append(root)

    while !queue.isEmpty{
        var size = queue.count
        for i in 0..<size{
            var current = queue.removeFirst()
            if i == size - 1{
                if let value = current?.val{
                    output.append(value)

                }
            }

            if let left = current?.left{//there is a left side to process
                queue.append(left)
            }

            if let right = current?.right{//there is a right side to process
                queue.append(right)
            }
        }
    } 
    return output
}