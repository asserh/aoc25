import Testing

@testable import Aoc2025

@Suite("Day 1")
struct Day1Tests {

  @Test("Part 1 should equal 3")
  func part1() {
    let day = Day1(sample: true)
    #expect(day.part1() == "3")
  }
}
