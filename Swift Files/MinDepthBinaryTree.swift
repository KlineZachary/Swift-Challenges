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


func minDepth(_ root: TreeNode?) -> Int {
    return depth(root)
}

func depth(_ root: TreeNode?) -> Int{
    if root == nil {return 0}

    if root?.left == nil && root?.right == nil  {return 1}
    if root?.left == nil{
        return depth(root?.right) + 1
    }
    if root?.right == nil{
        return depth(root?.left) + 1
    }

    return min(depth(root?.left), depth(root?.right)) + 1
}