// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct AttestationStorage {
        public let ipfs: Shared.AttestationIpfs?
        public let status: Shared.StorageStatus?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(ipfs: Shared.AttestationIpfs? = nil, status: Shared.StorageStatus? = nil) {
            self.ipfs = ipfs
            self.status = status
        }
    }
}

extension Shared.AttestationStorage: Codable {
    enum CodingKeys: String, CodingKey {
        case ipfs
        case status
    }
}
