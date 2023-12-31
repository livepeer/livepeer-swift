// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Asset1 {
        public let type: Shared.AssetSchemasType
        /// URL from which the asset was uploaded
        public let url: String
        public let encryption: Shared.Encryption?
        /// Gateway URL from asset if parsed from provided URL on upload.
        public let gatewayUrl: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter url: URL from which the asset was uploaded
        /// - Parameter gatewayUrl: Gateway URL from asset if parsed from provided URL on upload.
        ///
        public init(type: Shared.AssetSchemasType, url: String, encryption: Shared.Encryption? = nil, gatewayUrl: String? = nil) {
            self.type = type
            self.url = url
            self.encryption = encryption
            self.gatewayUrl = gatewayUrl
        }
    }
}

extension Shared.Asset1: Codable {
    enum CodingKeys: String, CodingKey {
        case type
        case url
        case encryption
        case gatewayUrl
    }
}

