// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum Ipfs {
        case one(Shared.One)
        case bool(Bool)
    }
}

extension Shared.Ipfs: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.One(from: decoder) {
            self = .one(value)
        } else if let value = try? Bool(from: decoder) {
            self = .bool(value)
        } else {
            throw LivepeerError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .one(let value):
            try value.encode(to: encoder)
        case .bool(let value):
            try value.encode(to: encoder)
        }
    }
}

