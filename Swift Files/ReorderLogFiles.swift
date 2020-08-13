// You have an array of logs.  Each log is a space delimited string of words.

// For each log, the first word in each log is an alphanumeric identifier.  Then, either:

//     Each word after the identifier will consist only of lowercase letters, or;
//     Each word after the identifier will consist only of digits.

// We will call these two varieties of logs letter-logs and digit-logs.  It is guaranteed that each log has at least one word after its identifier.

// Reorder the logs so that all of the letter-logs come before any digit-log.  The letter-logs are ordered lexicographically ignoring identifier, with the identifier used in case of ties.  The digit-logs should be put in their original order.

// Return the final order of the logs.
func reorderLogFiles(_ logs: [String]) -> [String] {
    var orderedLetters: [String] = []
    var letterLogs: [(String, String)] = []
    var digitsLogs: [String] = []
    if logs.count == 0 {return []}

    for log in logs{
        let spaceIndex = log.firstIndex(of: " ")!
        let indexAfter = log.index(after: spaceIndex)
        var key = String(log[..<spaceIndex])
        var value = String(log[indexAfter...])
        if !value.first!.isLetter{
            digitsLogs.append(log)
        }else{
            letterLogs.append((key,value))
        }
    }

    letterLogs.sort {$0.1 <= $1.1}

    //Generate output
    for i in 0..<letterLogs.count{
        var letterLog = letterLogs[i]
        orderedLetters.append(letterLog.0 + " " + letterLog.1)
    }

    return orderedLetters + digitsLogs
}

print(reorderLogFiles(["dig1 8 1 5 1","let1 art can","dig2 3 6","let2 own kit dig","let3 art zero"]))