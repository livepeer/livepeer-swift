// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct TaskSchemasIpfs {
        /// IPFS CID of the exported data
        public let cid: String

        /// Creates an object with the specified parameters
        ///
        /// - Parameter cid: IPFS CID of the exported data
        ///
        public init(cid: String) {
            self.cid = cid
        }
    }
}

extension Shared.TaskSchemasIpfs: Codable {
    enum CodingKeys: String, CodingKey {
        case cid
    }
}

