public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
 
 
func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var head = head
    if head == nil {return nil}
    var previous : ListNode? = nil

    while head?.val == val{
        head = head?.next
    }

    var current = head

    while current?.next != nil{
        if current?.next?.val == val{
            current?.next = current?.next?.next
        }else{
            current = current?.next
        }
    }
    return head      
}