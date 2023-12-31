// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public enum InputCreatorId {
        case creatorId(Shared.CreatorId)
        case string(String)
    }
}

extension Shared.InputCreatorId: Codable {
    public init(from decoder: Decoder) throws {
        if let value = try? Shared.CreatorId(from: decoder) {
            self = .creatorId(value)
        } else if let value = try? String(from: decoder) {
            self = .string(value)
        } else {
            throw LivepeerError.failedToHandleResponse(.failedToDecodeResponse)
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case .creatorId(let value):
            try value.encode(to: encoder)
        case .string(let value):
            try value.encode(to: encoder)
        }
    }
}

