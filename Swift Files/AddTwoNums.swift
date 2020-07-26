//Not Finished
//   Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }
 

   func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       if l1 == nil || l2 == nil {return nil}
       var numOne = ""
       var numTwo = ""
       var currentOne = l1
       var currentTwo = l2
       var head : ListNode?
       var nextNode = head

       while currentOne != nil{
           if let value = currentOne?.val{
               numOne.append(String(value))

           }
           currentOne = currentOne?.next
       }

       while currentTwo != nil{
           if let value = currentTwo?.val{
               numTwo.append(String(value))

           }
           currentTwo = currentTwo?.next
       }

       let realNumOne : Int? = Int(String(numOne.reversed()))
       let realNumTwo : Int? = Int(String(numTwo.reversed()))
       let total =  realNumOne! + realNumTwo!
       let reversedTotal = String(total).reversed()

       for char in reversedTotal{
           let num : Int? = Int(String(char))
           if head == nil{
               head = ListNode(num!)
               nextNode = head
           }else{
               nextNode?.next = ListNode(num!)
               nextNode = nextNode?.next
           }
       }
       return head
   }
}

