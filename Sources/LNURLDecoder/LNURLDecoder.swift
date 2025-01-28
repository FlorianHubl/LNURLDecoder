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
    public static func encode(url: String) throws -> String {
            guard let urlData = url.data(using: .utf8) else {
                throw "Failed to encode URL to data"
            }
            let converted = try SegwitAddrCoder().convertBits(from: 8, to: 5, pad: true, idata: urlData)
            let encoded = Bech32().encode("lnurl", values: converted)
            guard !encoded.isEmpty else {
                throw "Failed to encode URL to Bech32"
            }
            return encoded
        }
}

extension String: Error {
}
