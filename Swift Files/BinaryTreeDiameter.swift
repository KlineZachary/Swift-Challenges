// Given a binary tree, you need to compute the length of the diameter of the tree. 
// The diameter of a binary tree is the length of the longest path between any two nodes in a tree. 
// This path may or may not pass through the root. 
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
 
var diameter = 0
func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    getDiameter(root)
    return diameter
}

func getDiameter(_ root: TreeNode?) -> Int{
    if root == nil {return 0}
    var leftValue = 0, rightValue = 0
    if let left = root?.left{
        leftValue = getDiameter(left) + 1
    }
     if let right = root?.right{
        rightValue = getDiameter(right) + 1
    }
    diameter = max(diameter, leftValue + rightValue)
    return max(leftValue, rightValue)
}



