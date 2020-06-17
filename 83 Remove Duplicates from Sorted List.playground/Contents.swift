import UIKit

/*
 Given a sorted linked list, delete all duplicates such that each element appear only once.
 */



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        guard let nextNode = head.next else {return head}
        
            if head.val != nextNode.val {
                deleteDuplicates(nextNode)
            }
            if head.val == nextNode.val {
                head.next = nextNode.next
                deleteDuplicates(head)
            }
            
        return head
    }
}


