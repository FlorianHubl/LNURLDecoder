import XCTest
@testable import LNURLDecoder

final class LNURLDecoderTests: XCTestCase {
    func testExample() throws {
        let lnurl = "lnurl1dp68gurn8ghj7ampd3kx2ar0veekzar0wd5xjtnrdakj7tnhv4kxctttdehhwm30d3h82unvwqhhwetfwfjxzer4d36r2vcgxxmu8"
        let url = try LNURLDecoder.decode(lnurl: lnurl)
        print(url)
    }
}
