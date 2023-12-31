// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Output formats
    public struct Outputs {
        /// FMP4 output format
        public let fmp4: Shared.Fmp4?
        /// HLS output format
        public let hls: Shared.Hls?
        /// MP4 output format
        public let mp4: Shared.Mp4?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter fmp4: FMP4 output format
        /// - Parameter hls: HLS output format
        /// - Parameter mp4: MP4 output format
        ///
        public init(fmp4: Shared.Fmp4? = nil, hls: Shared.Hls? = nil, mp4: Shared.Mp4? = nil) {
            self.fmp4 = fmp4
            self.hls = hls
            self.mp4 = mp4
        }
    }
}

extension Shared.Outputs: Codable {
    enum CodingKeys: String, CodingKey {
        case fmp4
        case hls
        case mp4
    }
}

