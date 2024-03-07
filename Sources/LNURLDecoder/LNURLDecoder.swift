// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct LNURLDecoder {
    public static func decode(lnurl: String) throws -> String {
        let bech32 = try Bech32().decode(lnurl).1
        let decoded = try SegwitAddrCoder().convertBits(from: 5, to: 8, pad: true, idata: bech32)
        let url = String(data: decoded, encoding: .utf8)
        guard let url = url else {throw "Not valid URL"}
        return url
    }
}

extension String: Error {
}
