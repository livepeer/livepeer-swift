// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Credentials for the private input video storage
    public struct Credentials {
        /// Access Key ID
        public let accessKeyId: String
        /// Secret Access Key
        public let secretAccessKey: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter accessKeyId: Access Key ID
        /// - Parameter secretAccessKey: Secret Access Key
        ///
        public init(accessKeyId: String, secretAccessKey: String) {
            self.accessKeyId = accessKeyId
            self.secretAccessKey = secretAccessKey
        }
    }
}

extension Shared.Credentials: Codable {
    enum CodingKeys: String, CodingKey {
        case accessKeyId
        case secretAccessKey
    }
}

