// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct TargetAddPayload {
        /// Name of transcoding profile that should be sent. Use
        /// "source" for pushing source stream data
        /// 
        public let profile: String
        /// ID of multistream target object where to push this stream
        public let id: String?
        /// Inline multistream target object. Will automatically
        /// create the target resource to be used by the created
        /// stream.
        /// 
        public let spec: Shared.TargetAddPayloadSpec?
        /// If true, the stream audio will be muted and only silent
        /// video will be pushed to the target.
        /// 
        public let videoOnly: Bool?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter profile: Name of transcoding profile that should be sent. Use
        /// "source" for pushing source stream data
        /// 
        /// - Parameter id: ID of multistream target object where to push this stream
        /// - Parameter spec: Inline multistream target object. Will automatically
        /// create the target resource to be used by the created
        /// stream.
        /// 
        /// - Parameter videoOnly: If true, the stream audio will be muted and only silent
        /// video will be pushed to the target.
        /// 
        ///
        public init(profile: String, id: String? = nil, spec: Shared.TargetAddPayloadSpec? = nil, videoOnly: Bool? = nil) {
            self.profile = profile
            self.id = id
            self.spec = spec
            self.videoOnly = videoOnly
        }
    }
}

extension Shared.TargetAddPayload: Codable {
    enum CodingKeys: String, CodingKey {
        case profile
        case id
        case spec
        case videoOnly
    }
}

