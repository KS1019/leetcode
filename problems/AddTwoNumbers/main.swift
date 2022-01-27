/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var cur: ListNode? = nil
        var dummy: ListNode? = ListNode(0)
        cur  = dummy
        var carry: Int = 0
        var p = l1
        var q = l2
        
        while (p != nil || q != nil) {
            var x = (p != nil) ? p!.val : 0;
            var y = (q != nil) ? q!.val : 0;
            
            var sum = x + y + carry
            
            carry = sum / 10
            
            cur!.next = ListNode(sum % 10)
            cur = cur!.next
            if (p != nil) {
                p = p!.next
            }
            if (q != nil) {
                q = q!.next
            }
        }
        
        if (carry > 0) {
            cur!.next = ListNode(1)
        }
        
        return dummy!.next
    }
}
