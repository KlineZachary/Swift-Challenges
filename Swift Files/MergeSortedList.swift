class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil{
            if l2 != nil{
                return l2
            }
            return nil
        }else if l2 == nil{
            if l1 != nil{
                return l1
            }
            return nil
        }
        
        var l1 = l1
        var l2 = l2
        
        var output = ListNode(-1)
        var head = output

        while(l1 != nil && l2 != nil){
            if l1!.val < l2!.val{
                output.next = l1
                l1 = l1!.next
            }else{
                output.next = l2
                l2 = l2!.next
            }
            output = output.next!
        }

        if l1 != nil{
            output.next = l1
        }else{
            output.next = l2
        }
        return head.next!
    }
}
