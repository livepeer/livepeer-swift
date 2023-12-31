// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// HLS output format
    public struct Hls {
        /// Path for the HLS output
        public let path: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter path: Path for the HLS output
        ///
        public init(path: String) {
            self.path = path
        }
    }
}

extension Shared.Hls: Codable {
    enum CodingKeys: String, CodingKey {
        case path
    }
}

