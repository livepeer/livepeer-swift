// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct AssetPatchPayload {
        public let creatorId: Shared.InputCreatorId?
        /// Name of the asset. This is not necessarily the filename, can be a
        /// custom name or title
        /// 
        public let name: String?
        /// Whether the playback policy for a asset or stream is public or signed
        public let playbackPolicy: Shared.PlaybackPolicy?
        public let storage: Shared.Storage?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter name: Name of the asset. This is not necessarily the filename, can be a
        /// custom name or title
        /// 
        /// - Parameter playbackPolicy: Whether the playback policy for a asset or stream is public or signed
        ///
        public init(creatorId: Shared.InputCreatorId? = nil, name: String? = nil, playbackPolicy: Shared.PlaybackPolicy? = nil, storage: Shared.Storage? = nil) {
            self.creatorId = creatorId
            self.name = name
            self.playbackPolicy = playbackPolicy
            self.storage = storage
        }
    }
}

extension Shared.AssetPatchPayload: Codable {
    enum CodingKeys: String, CodingKey {
        case creatorId
        case name
        case playbackPolicy
        case storage
    }
}
