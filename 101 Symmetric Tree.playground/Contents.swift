import UIKit

/*
 Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).
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
        
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
       
        return isMirror(node1: root.left, node2: root.right)
    }

    func isMirror(node1: TreeNode?, node2: TreeNode?) -> Bool {
        if node1 == nil && node2 == nil {
            
            return true
        }
        if node1 == nil || node2 == nil {
           
            return false
        }
        guard let node1 = node1, let node2 = node2 else {return true}
        
        print(node1.val, node2.val)
        return node1.val == node2.val && isMirror(node1: node1.right, node2: node2.left) && isMirror(node1: node2.right, node2: node1.left)
    }
}

extension TreeNode: Equatable, Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
    }
    
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val
    }
}
