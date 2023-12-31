// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct PatchAccessControlSigningKeyKeyIdRequestBody {
        public let disabled: Bool?
        public let name: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(disabled: Bool? = nil, name: String? = nil) {
            self.disabled = disabled
            self.name = name
        }
    }
}

extension Operations.PatchAccessControlSigningKeyKeyIdRequestBody: Codable {
    enum CodingKeys: String, CodingKey {
        case disabled
        case name
    }
}

