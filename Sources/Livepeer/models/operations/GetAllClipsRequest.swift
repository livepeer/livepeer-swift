// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetAllClipsRequest: APIValue {
        /// ID of the parent stream or playbackId of parent stream
        public let id: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter id: ID of the parent stream or playbackId of parent stream
        ///
        public init(id: String) {
            self.id = id
        }
    }
}