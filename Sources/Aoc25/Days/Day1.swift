struct Day1: Day {
  let input: [String]

  func part1() -> String {
    var dial = 50
    var count = 0
    
    for line in input {
      guard let number = Int(line.dropFirst()) else {
        fatalError("invalid line")
      }

      if line.hasPrefix("L") {
        dial -= number
      } else {
        dial += number
      }
      
      if dial % 100 == 0 {
        count += 1
      }
    }
    
    return String(count)
  }

  func part2() -> String {
    return ""
  }
}
