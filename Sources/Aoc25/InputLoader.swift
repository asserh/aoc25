import Foundation

enum InputLoader {
  static func loadString(from file: String, sample: Bool = false) throws
    -> String
  {
    let fileName = sample ? "\(file).sample" : file
    guard
      let url = Bundle.module.url(
        forResource: fileName,
        withExtension: "txt",
      )
    else {
      throw NSError(
        domain: "Input",
        code: 1,
        userInfo: [
          NSLocalizedDescriptionKey:
            "Missing resource \(file)"
        ]
      )
    }

    return try String(contentsOf: url, encoding: .utf8)
  }

  static func lines(from file: String, sample: Bool = false) throws
    -> [String]
  {
    try loadString(from: file, sample: sample)
      .split(whereSeparator: \.isNewline)
      .map(String.init)
  }
}
