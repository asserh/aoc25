@main
struct Aoc2025 {
  static let days: [Int: Day] = [
    1: Day1()
      // 2: Day02(),
  ]

  static func main() {
    let args = Array(CommandLine.arguments.dropFirst())
    guard
      let dayNumber = args.first.flatMap(Int.init) ?? days.keys.sorted().last,
      let day = days[dayNumber] else {
      return
    }

    print("==> Running day: \(dayNumber)")
    print("-> Part 1: \(day.part1())")
    print("-> Part 2: \(day.part2())")
    print("==> Done")
  }
}
