// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Operations {
    /// A model object
    public struct GetDataViewsQueryRequest: APIValue {
        /// The asset ID to filter metrics for
        public let assetId: String?
        /// The list of fields to break down the query results. Specify this
        /// query-string multiple times to break down by multiple fields.
        /// 
        public let breakdownBy: [Operations.BreakdownBy]?
        /// The creator ID to filter the query results
        public let creatorId: String?
        /// Start timestamp for the query range (inclusive)
        public let from: Operations.From?
        /// The playback ID to filter the query results. This can be a canonical
        /// playback ID from Livepeer assets or streams, or dStorage identifiers
        /// for assets
        /// 
        public let playbackId: String?
        /// The stream ID to filter metrics for
        public let streamId: String?
        /// The time step to aggregate viewership metrics by
        public let timeStep: Operations.TimeStep?
        /// End timestamp for the query range (exclusive)
        public let to: Operations.To?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter assetId: The asset ID to filter metrics for
        /// - Parameter breakdownBy: The list of fields to break down the query results. Specify this
        /// query-string multiple times to break down by multiple fields.
        /// 
        /// - Parameter creatorId: The creator ID to filter the query results
        /// - Parameter from: Start timestamp for the query range (inclusive)
        /// - Parameter playbackId: The playback ID to filter the query results. This can be a canonical
        /// playback ID from Livepeer assets or streams, or dStorage identifiers
        /// for assets
        /// 
        /// - Parameter streamId: The stream ID to filter metrics for
        /// - Parameter timeStep: The time step to aggregate viewership metrics by
        /// - Parameter to: End timestamp for the query range (exclusive)
        ///
        public init(assetId: String? = nil, breakdownBy: [Operations.BreakdownBy]? = nil, creatorId: String? = nil, from: Operations.From? = nil, playbackId: String? = nil, streamId: String? = nil, timeStep: Operations.TimeStep? = nil, to: Operations.To? = nil) {
            self.assetId = assetId
            self.breakdownBy = breakdownBy
            self.creatorId = creatorId
            self.from = from
            self.playbackId = playbackId
            self.streamId = streamId
            self.timeStep = timeStep
            self.to = to
        }
    }
}