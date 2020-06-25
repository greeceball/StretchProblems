import UIKit

/*
 Given a binary tree, find its maximum depth.

 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 */

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

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var depthRight = 0
        var depthLeft = 0
        var maxDepthCount = 0
        
        guard let root = root else { return 0 }
        
        if root.right != nil {
            depthRight += 1
            maxDepth(root.right)
        } else if root.left != nil {
            depthLeft += 1
            maxDepth(root.left)
        }
        if depthRight > depthLeft {
            maxDepthCount = depthRight
        } else {
            maxDepthCount = depthLeft
        }
        return maxDepthCount
    }
}
