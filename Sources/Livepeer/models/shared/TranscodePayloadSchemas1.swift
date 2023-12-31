// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Storage for the output files
    public struct TranscodePayloadSchemas1 {
        /// Bucket with output files
        public let bucket: String
        /// Credentials for the output video storage
        public let credentials: Shared.TranscodePayloadCredentials
        /// Service endpoint URL (AWS S3 endpoint list: https://docs.aws.amazon.com/general/latest/gr/s3.html, GCP S3 endpoint: https://storage.googleapis.com, Storj: https://gateway.storjshare.io)
        public let endpoint: String
        /// Type of service used for output files
        public let type: Shared.TranscodePayloadSchemasType

        /// Creates an object with the specified parameters
        ///
        /// - Parameter bucket: Bucket with output files
        /// - Parameter credentials: Credentials for the output video storage
        /// - Parameter endpoint: Service endpoint URL (AWS S3 endpoint list: https://docs.aws.amazon.com/general/latest/gr/s3.html, GCP S3 endpoint: https://storage.googleapis.com, Storj: https://gateway.storjshare.io)
        /// - Parameter type: Type of service used for output files
        ///
        public init(bucket: String, credentials: Shared.TranscodePayloadCredentials, endpoint: String, type: Shared.TranscodePayloadSchemasType) {
            self.bucket = bucket
            self.credentials = credentials
            self.endpoint = endpoint
            self.type = type
        }
    }
}

extension Shared.TranscodePayloadSchemas1: Codable {
    enum CodingKeys: String, CodingKey {
        case bucket
        case credentials
        case endpoint
        case type
    }
}

