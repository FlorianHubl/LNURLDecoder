import XCTest
@testable import LNURLDecoder

final class LNURLDecoderTests: XCTestCase {
    func testExample() throws {
        let input = "Bitcoin fixes this"
        let lnurl = try LNURLDecoder.encode(url: input)
        print(lnurl)
        let output = try LNURLDecoder.decode(lnurl: lnurl)
        print(output)
    }
}
