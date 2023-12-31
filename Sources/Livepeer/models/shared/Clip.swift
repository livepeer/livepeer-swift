// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct Clip {
        /// Force to use a specific strategy in the Catalyst pipeline. If not specified, the default strategy that Catalyst is configured for will be used. This field only available for admin users, and is only used for E2E testing.
        public let catalystPipelineStrategy: Shared.CatalystPipelineStrategy?
        /// Strategy to use for clipping the asset. If not specified, the default strategy that Catalyst is configured for will be used. This field only available for admin users, and is only used for E2E testing.
        public let clipStrategy: Shared.ClipStrategy?
        /// ID of the input asset or stream
        public let inputId: String?
        /// ID of the session
        public let sessionId: String?
        /// URL of the asset to "clip"
        public let url: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter catalystPipelineStrategy: Force to use a specific strategy in the Catalyst pipeline. If not specified, the default strategy that Catalyst is configured for will be used. This field only available for admin users, and is only used for E2E testing.
        /// - Parameter clipStrategy: Strategy to use for clipping the asset. If not specified, the default strategy that Catalyst is configured for will be used. This field only available for admin users, and is only used for E2E testing.
        /// - Parameter inputId: ID of the input asset or stream
        /// - Parameter sessionId: ID of the session
        /// - Parameter url: URL of the asset to "clip"
        ///
        public init(catalystPipelineStrategy: Shared.CatalystPipelineStrategy? = nil, clipStrategy: Shared.ClipStrategy? = nil, inputId: String? = nil, sessionId: String? = nil, url: String? = nil) {
            self.catalystPipelineStrategy = catalystPipelineStrategy
            self.clipStrategy = clipStrategy
            self.inputId = inputId
            self.sessionId = sessionId
            self.url = url
        }
    }
}

extension Shared.Clip: Codable {
    enum CodingKeys: String, CodingKey {
        case catalystPipelineStrategy
        case clipStrategy
        case inputId
        case sessionId
        case url
    }
}

