// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// status of webhook
    public struct Status {
        /// failure timestamp and error message with status code
        public let lastFailure: Shared.LastFailure?
        /// Timestamp (in milliseconds) at which the webhook last was
        /// triggered
        /// 
        @DecimalSerialized
        public private(set) var lastTriggeredAt: Double?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter lastFailure: failure timestamp and error message with status code
        /// - Parameter lastTriggeredAt: Timestamp (in milliseconds) at which the webhook last was
        /// triggered
        /// 
        ///
        public init(lastFailure: Shared.LastFailure? = nil, lastTriggeredAt: Double? = nil) {
            self.lastFailure = lastFailure
            self._lastTriggeredAt = DecimalSerialized<Double?>(wrappedValue: lastTriggeredAt)
        }
    }
}

extension Shared.Status: Codable {
    enum CodingKeys: String, CodingKey {
        case lastFailure
        case lastTriggeredAt
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lastFailure = try container.decodeIfPresent(Shared.LastFailure.self, forKey: .lastFailure)
        self._lastTriggeredAt = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .lastTriggeredAt) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.lastFailure, forKey: .lastFailure)
        if self.lastTriggeredAt != nil {
            try container.encode(self._lastTriggeredAt, forKey: .lastTriggeredAt)
        }
    }
}

extension Shared.Status {
    var lastTriggeredAtWrapper: DecimalSerialized<Double?> {
        return _lastTriggeredAt
    }
}