import UIKit
import XCTest
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

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

struct SingleLinkedList<Value> {
  
    private(set) var firstNode: Node?
    private(set) var lastNode: Node?
}

extension SingleLinkedList {
    class Node {
        var value: Value
        fileprivate(set) weak var previous: Node?
        fileprivate(set) var next: Node?
        
        init(value: Value) {
            self.value = value
        }
    }
}

extension SingleLinkedList {
    func iterator() -> AnyIterator<Value> {
        var node = firstNode
        
        return AnyIterator {
            let value = node?.value
            node = node?.next
            return value
        }
    }
}

class Solution {

    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var list1 = l1
        var list2 = l2
        
        let head : ListNode = ListNode(0)
        var temp = head
        
        while list1 != nil && list2 != nil {
            let var1 = list1!.val
            let var2 = list2!.val
            
            if var1 > var2 {
                temp.next = list2!
                list2 = list2?.next
            } else {
                temp.next = list1!
                list1 = list1?.next
            }
            temp = temp.next!
        }
        temp.next = list1 ?? list2
        return head.next
    }
}

let list1 = ListNode(1)
let list2 = [1,3,4]


let s = Solution()
//s.mergeTwoLists(, list2)
