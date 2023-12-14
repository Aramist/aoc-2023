/// Parse a single line
func parse(line: String) -> Int {
    // find the first digit
    let digits = "0123456789"
    let filtered = line.filter {
        digits.contains($0)
    }
    
    let first = Int(filtered.first)!
    let last = Int(filtered.last)!
    return 10 * first + last
}


func main() {
    let lines = String(contentsOfFile: "input_data/day_one.txt").split(separator: "\n")
    var sum: Int = 0

    for line in lines {
        sum += parse(line: String(line))
    }
    print("Sum: \(sum)")
}

main()