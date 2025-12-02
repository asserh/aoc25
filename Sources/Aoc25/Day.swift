protocol Day: Sendable {
  init(input: [String])

  func part1() -> String
  func part2() -> String
}

extension Day {
  init(sample: Bool = false) {
    do {
      let lines = try InputLoader.lines(
        from: String(describing: Self.self).lowercased(),
        sample: sample
      )
      self.init(input: lines)
    } catch {
      fatalError("Failed to load input for \(Self.self)")
    }
  }
}
