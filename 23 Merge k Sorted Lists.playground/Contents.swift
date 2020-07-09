import UIKit

/*
 Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
 [
   1->4->5,
   1->3->4,
   2->6
 ]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        
    }
}
