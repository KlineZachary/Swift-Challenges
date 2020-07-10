//NOT FINISHED


//public class TreeNode {
//      public var val: Int
//      public var left: TreeNode?
//      public var right: TreeNode?
//      public init() { self.val = 0; self.left = nil; self.right = nil; }
//      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//          self.val = val
//          self.left = left
//          self.right = right
//      }
//}
//
//class Solution {
//    func delNodes(_ root: TreeNode?, _ to_delete: [Int]) -> [TreeNode?] {
//        var remaining : [TreeNode] = []
//
//        removeNodes(root, to_delete,remaining)
//        if let actualRoot = root{
//            if(!to_delete.contains(actualRoot.val)){
//                remaining.append(actualRoot)
//            }
//
//        }
//        return remaining
//    }
//
//    func removeNodes(_ root: TreeNode?, _ to_delete: [Int], _ remaining: [TreeNode]){
//        var remaining = remaining
//        guard let root = root else{return}
//        removeNodes(root.left, to_delete, remaining)
//        removeNodes(root.right, to_delete, remaining)
//
//        if to_delete.contains(root.val){
//            if let leftNode = root.left{
//                remaining.append(leftNode)
//            }
//            if let rightNode = root.right{
//                remaining.append(rightNode)
//            }
//
//            return
//        }
//    }
//}
