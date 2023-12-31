// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct DeleteStreamIdMultistreamTargetIdRequest: APIValue {
        /// ID of the parent stream
        public let id: String
        /// ID of the multistream target
        public let targetId: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the parent stream
        /// - Parameter targetId: ID of the multistream target
        ///
        public init(id: String, targetId: String) {
            self.id = id
            self.targetId = targetId
        }
    }
}
