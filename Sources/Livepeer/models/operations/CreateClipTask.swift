// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct CreateClipTask {
        public let id: String?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(id: String? = nil) {
            self.id = id
        }
    }
}

extension Operations.CreateClipTask: Codable {
    enum CodingKeys: String, CodingKey {
        case id
    }
}
