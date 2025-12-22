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
    var dial = 50
    var count = 0

    for line in input {
      guard let number = Int(line.dropFirst()) else {
        fatalError("invalid line")
      }

      let result: Int
      if line.hasPrefix("L") {
        result = (dial - number) - 100
      } else {
        result = dial + number
      }

      dial = ((result % 100) + 100) % 100

      print(dial)
      if dial == 0 {
        count += 1
      } else if dial + number > 100 {
        let c = abs(result) / 100
        print("Counting on \(c) \(line)")
        count += c
      }
    }

    return String(count)
  }
}
