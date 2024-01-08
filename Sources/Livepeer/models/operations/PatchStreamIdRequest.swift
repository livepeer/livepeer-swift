// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PatchStreamIdRequest: APIValue {
        /// ID of the stream
        public let id: String
        public let streamPatchPayload: Shared.StreamPatchPayload

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the stream
        ///
        public init(id: String, streamPatchPayload: Shared.StreamPatchPayload) {
            self.id = id
            self.streamPatchPayload = streamPatchPayload
        }
    }
}