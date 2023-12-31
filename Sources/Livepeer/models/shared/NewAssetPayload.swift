// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct NewAssetPayload {
        /// Name of the asset. This is not necessarily the filename, can be a
        /// custom name or title
        /// 
        public let name: String
        /// Decides if the output video should include C2PA signature
        public let c2pa: Bool?
        public let creatorId: Shared.InputCreatorId?
        public let encryption: Shared.NewAssetPayloadEncryption?
        /// Whether the playback policy for a asset or stream is public or signed
        public let playbackPolicy: Shared.PlaybackPolicy?
        /// Whether to generate MP4s for the asset.
        public let staticMp4: Bool?
        public let storage: Shared.NewAssetPayloadStorage?
        /// URL where the asset contents can be retrieved. Only allowed (and
        /// also required) in the upload asset via URL endpoint. For an IPFS
        /// source, this should be similar to: `ipfs://{CID}`. For an Arweave
        /// source: `ar://{CID}`.
        /// 
        public let url: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter name: Name of the asset. This is not necessarily the filename, can be a
        /// custom name or title
        /// 
        /// - Parameter c2pa: Decides if the output video should include C2PA signature
        /// - Parameter playbackPolicy: Whether the playback policy for a asset or stream is public or signed
        /// - Parameter staticMp4: Whether to generate MP4s for the asset.
        /// - Parameter url: URL where the asset contents can be retrieved. Only allowed (and
        /// also required) in the upload asset via URL endpoint. For an IPFS
        /// source, this should be similar to: `ipfs://{CID}`. For an Arweave
        /// source: `ar://{CID}`.
        /// 
        ///
        public init(name: String, c2pa: Bool? = nil, creatorId: Shared.InputCreatorId? = nil, encryption: Shared.NewAssetPayloadEncryption? = nil, playbackPolicy: Shared.PlaybackPolicy? = nil, staticMp4: Bool? = nil, storage: Shared.NewAssetPayloadStorage? = nil, url: String? = nil) {
            self.name = name
            self.c2pa = c2pa
            self.creatorId = creatorId
            self.encryption = encryption
            self.playbackPolicy = playbackPolicy
            self.staticMp4 = staticMp4
            self.storage = storage
            self.url = url
        }
    }
}

extension Shared.NewAssetPayload: Codable {
    enum CodingKeys: String, CodingKey {
        case name
        case c2pa
        case creatorId
        case encryption
        case playbackPolicy
        case staticMp4
        case storage
        case url
    }
}

