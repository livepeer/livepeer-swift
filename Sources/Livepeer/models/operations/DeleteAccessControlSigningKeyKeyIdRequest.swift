// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct DeleteAccessControlSigningKeyKeyIdRequest: APIValue {
        /// ID of the signing key
        public let keyId: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter keyId: ID of the signing key
        ///
        public init(keyId: String) {
            self.keyId = keyId
        }
    }
}
