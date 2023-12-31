// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Spec {
        /// Additional data to add to the NFT metadata exported to
        /// IPFS. Will be deep merged with the default metadata
        /// exported.
        /// 
        public let nftMetadata: Shared.NftMetadata?
        /// Name of the NFT metadata template to export. 'player'
        /// will embed the Livepeer Player on the NFT while 'file'
        /// will reference only the immutable MP4 files.
        /// 
        public let nftMetadataTemplate: Shared.NftMetadataTemplate?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter nftMetadata: Additional data to add to the NFT metadata exported to
        /// IPFS. Will be deep merged with the default metadata
        /// exported.
        /// 
        /// - Parameter nftMetadataTemplate: Name of the NFT metadata template to export. 'player'
        /// will embed the Livepeer Player on the NFT while 'file'
        /// will reference only the immutable MP4 files.
        /// 
        ///
        public init(nftMetadata: Shared.NftMetadata? = nil, nftMetadataTemplate: Shared.NftMetadataTemplate? = nil) {
            self.nftMetadata = nftMetadata
            self.nftMetadataTemplate = nftMetadataTemplate
        }
    }
}

extension Shared.Spec: Codable {
    enum CodingKeys: String, CodingKey {
        case nftMetadata
        case nftMetadataTemplate
    }
}

