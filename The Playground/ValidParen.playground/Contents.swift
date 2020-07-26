struct Stack {
    var items = [Character]()
    mutating func push(item: Character) {
        items.append(item)
    }
    mutating func pop() -> Character{
        return items.removeLast()
    }
    mutating func peek() -> Character {
        return items.last ?? " "
       }
    func count() -> Int {
        return items.count
    }
  
}

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = Stack()
   
        if s.isEmpty {return true}
        
        
        for char in s{
            if char == "(" || char == "{" || char == "["{
                stack.push(item: char)
            }else{
                let topStack = stack.peek()
                if topStack == " " {return false}
                if char == ")" && topStack ==  "("{
                    stack.pop()
                }else if char == "}"  && topStack ==  "{"{
                    stack.pop()
                    
                }else if char == "]"  && topStack ==  "["{
                    stack.pop()
                }else{
                    return false
                }
                
                
            }
        }
        if stack.count() == 0{return true}
        return false
    }
}

let output = Solution()
print(output.isValid("{{(})}"))
