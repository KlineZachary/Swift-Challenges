import Foundation
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var output : [Int] = []
    guard let root = root else{return output}
    output += inorderTraversal(root.left)
    output.append(root.val)
    output += inorderTraversal(root.right)
    return output
}
