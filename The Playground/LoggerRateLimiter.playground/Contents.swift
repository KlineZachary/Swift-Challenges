//Design a logger system that receive stream of messages along with its timestamps, each message should be printed if and only if it is not printed in the last 10 seconds.
//
//Given a message and a timestamp (in seconds granularity), return true if the message should be printed in the given timestamp, otherwise returns false.
//
//It is possible that several messages arrive roughly at the same time.
//

class Logger {
    
    var logMessages : [String : Int]
    /** Initialize your data structure here. */
    init() {
        logMessages = [:]
    }
    
    /** Returns true if the message should be printed in the given timestamp, otherwise returns false.
        If this method returns false, the message will not be printed.
        The timestamp is in seconds granularity. */
    func shouldPrintMessage(_ timestamp: Int, _ message: String) -> Bool {
        if let value = logMessages[message]{
            if timestamp - value >= 10 {
                logMessages[message] = timestamp
                return true
            }
            return false
            
        }else{
            logMessages[message] = timestamp
            return true
        }
    }
}

let obj = Logger()
let ret_1: Bool = obj.shouldPrintMessage(1, "foo")
let ret_2: Bool = obj.shouldPrintMessage(2, "foo")
let ret_3: Bool = obj.shouldPrintMessage(11, "foo")

print(ret_1)
print(ret_2)
print(ret_3)


/**
 * Your Logger object will be instantiated and called as such:
 * let obj = Logger()
 * let ret_1: Bool = obj.shouldPrintMessage(timestamp, message)
 */
