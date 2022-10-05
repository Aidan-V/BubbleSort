var sortStrings = [String]()

func readLine() -> [String] {
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            sortStrings.append(line!)
        }
    } while line != nil
    return sortStrings
}
 
func bubbleSort(sortStrings: [String]) -> [String] {

    var sortStrs = readLine()

    for _ in 0 ..< sortStrs.count - 1 {
        for j in 0 ..< sortStrs.count - 1 {
            if (sortStrs[j] > sortStrs[j + 1]) {
                let temp = sortStrs[j]
                sortStrs[j] = sortStrs[j + 1]
                sortStrs[j + 1] = temp
            }
        }
    }
    return sortStrs
}
let sortStrs = bubbleSort(sortStrings: sortStrings)
for x in sortStrs {
    print(x)
}
