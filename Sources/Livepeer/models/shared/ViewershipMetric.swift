// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// An individual metric about viewership of an asset. Necessarily, at least
    /// 1 of playbackId and dStorageUrl will be present, depending on the query.
    /// 
    public struct ViewershipMetric {
        /// The total playtime in minutes for the asset
        @DecimalSerialized
        public private(set) var playtimeMins: Double
        /// The number of views for the asset
        public let viewCount: Int
        /// The browser used by the viewer
        public let browser: String?
        /// The browser engine used by the viewer's browser
        public let browserEngine: String?
        /// The continent where the viewer is located
        public let continent: String?
        /// The country where the viewer is located
        public let country: String?
        /// The CPU used by the viewer's device
        public let cpu: String?
        /// The ID of the creator associated with the metric
        public let creatorId: String?
        /// The device used by the viewer
        public let device: String?
        /// The type of the device used by the viewer
        public let deviceType: String?
        /// The URL of the distributed storage used for the asset
        public let dStorageUrl: String?
        /// The error rate for the asset
        @DecimalSerialized
        public private(set) var errorRate: Double?
        /// The percentage of sessions that existed before the asset started
        /// playing
        /// 
        @DecimalSerialized
        public private(set) var exitsBeforeStart: Double?
        /// Geographic encoding of the viewers location. Accurate to 3 digits.
        public let geohas: String?
        /// The operating system used by the viewer
        public let os: String?
        /// The playback ID associated with the metric
        public let playbackId: String?
        /// The rebuffering ratio for the asset
        @DecimalSerialized
        public private(set) var rebufferRatio: Double?
        /// The subdivision (e.g., state or province) where the viewer is
        /// located
        /// 
        public let subdivision: String?
        /// Timestamp (in milliseconds) when the metric was recorded. If the
        /// query contains a time step, this timestamp will point to the
        /// beginning of the time step period.
        /// 
        @DecimalSerialized
        public private(set) var timestamp: Double?
        /// The timezone where the viewer is located
        public let timezone: String?
        /// The time-to-first-frame (TTFF) in milliseconds
        @DecimalSerialized
        public private(set) var ttffMs: Double?
        /// The ID of the viewer associated with the metric
        public let viewerId: String?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter playtimeMins: The total playtime in minutes for the asset
        /// - Parameter viewCount: The number of views for the asset
        /// - Parameter browser: The browser used by the viewer
        /// - Parameter browserEngine: The browser engine used by the viewer's browser
        /// - Parameter continent: The continent where the viewer is located
        /// - Parameter country: The country where the viewer is located
        /// - Parameter cpu: The CPU used by the viewer's device
        /// - Parameter creatorId: The ID of the creator associated with the metric
        /// - Parameter device: The device used by the viewer
        /// - Parameter deviceType: The type of the device used by the viewer
        /// - Parameter dStorageUrl: The URL of the distributed storage used for the asset
        /// - Parameter errorRate: The error rate for the asset
        /// - Parameter exitsBeforeStart: The percentage of sessions that existed before the asset started
        /// playing
        /// 
        /// - Parameter geohas: Geographic encoding of the viewers location. Accurate to 3 digits.
        /// - Parameter os: The operating system used by the viewer
        /// - Parameter playbackId: The playback ID associated with the metric
        /// - Parameter rebufferRatio: The rebuffering ratio for the asset
        /// - Parameter subdivision: The subdivision (e.g., state or province) where the viewer is
        /// located
        /// 
        /// - Parameter timestamp: Timestamp (in milliseconds) when the metric was recorded. If the
        /// query contains a time step, this timestamp will point to the
        /// beginning of the time step period.
        /// 
        /// - Parameter timezone: The timezone where the viewer is located
        /// - Parameter ttffMs: The time-to-first-frame (TTFF) in milliseconds
        /// - Parameter viewerId: The ID of the viewer associated with the metric
        ///
        public init(playtimeMins: Double, viewCount: Int, browser: String? = nil, browserEngine: String? = nil, continent: String? = nil, country: String? = nil, cpu: String? = nil, creatorId: String? = nil, device: String? = nil, deviceType: String? = nil, dStorageUrl: String? = nil, errorRate: Double? = nil, exitsBeforeStart: Double? = nil, geohas: String? = nil, os: String? = nil, playbackId: String? = nil, rebufferRatio: Double? = nil, subdivision: String? = nil, timestamp: Double? = nil, timezone: String? = nil, ttffMs: Double? = nil, viewerId: String? = nil) {
            self._playtimeMins = DecimalSerialized<Double>(wrappedValue: playtimeMins)
            self.viewCount = viewCount
            self.browser = browser
            self.browserEngine = browserEngine
            self.continent = continent
            self.country = country
            self.cpu = cpu
            self.creatorId = creatorId
            self.device = device
            self.deviceType = deviceType
            self.dStorageUrl = dStorageUrl
            self._errorRate = DecimalSerialized<Double?>(wrappedValue: errorRate)
            self._exitsBeforeStart = DecimalSerialized<Double?>(wrappedValue: exitsBeforeStart)
            self.geohas = geohas
            self.os = os
            self.playbackId = playbackId
            self._rebufferRatio = DecimalSerialized<Double?>(wrappedValue: rebufferRatio)
            self.subdivision = subdivision
            self._timestamp = DecimalSerialized<Double?>(wrappedValue: timestamp)
            self.timezone = timezone
            self._ttffMs = DecimalSerialized<Double?>(wrappedValue: ttffMs)
            self.viewerId = viewerId
        }
    }
}

extension Shared.ViewershipMetric: Codable {
    enum CodingKeys: String, CodingKey {
        case playtimeMins
        case viewCount
        case browser
        case browserEngine
        case continent
        case country
        case cpu
        case creatorId
        case device
        case deviceType
        case dStorageUrl
        case errorRate
        case exitsBeforeStart
        case geohas
        case os
        case playbackId
        case rebufferRatio
        case subdivision
        case timestamp
        case timezone
        case ttffMs
        case viewerId
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self._playtimeMins = try container.decode(DecimalSerialized<Double>.self, forKey: .playtimeMins)
        self.viewCount = try container.decode(Int.self, forKey: .viewCount)
        self.browser = try container.decodeIfPresent(String.self, forKey: .browser)
        self.browserEngine = try container.decodeIfPresent(String.self, forKey: .browserEngine)
        self.continent = try container.decodeIfPresent(String.self, forKey: .continent)
        self.country = try container.decodeIfPresent(String.self, forKey: .country)
        self.cpu = try container.decodeIfPresent(String.self, forKey: .cpu)
        self.creatorId = try container.decodeIfPresent(String.self, forKey: .creatorId)
        self.device = try container.decodeIfPresent(String.self, forKey: .device)
        self.deviceType = try container.decodeIfPresent(String.self, forKey: .deviceType)
        self.dStorageUrl = try container.decodeIfPresent(String.self, forKey: .dStorageUrl)
        self._errorRate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .errorRate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._exitsBeforeStart = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .exitsBeforeStart) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.geohas = try container.decodeIfPresent(String.self, forKey: .geohas)
        self.os = try container.decodeIfPresent(String.self, forKey: .os)
        self.playbackId = try container.decodeIfPresent(String.self, forKey: .playbackId)
        self._rebufferRatio = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .rebufferRatio) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.subdivision = try container.decodeIfPresent(String.self, forKey: .subdivision)
        self._timestamp = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .timestamp) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
        self._ttffMs = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .ttffMs) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self.viewerId = try container.decodeIfPresent(String.self, forKey: .viewerId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self._playtimeMins, forKey: .playtimeMins)
        try container.encode(self.viewCount, forKey: .viewCount)
        try container.encodeIfPresent(self.browser, forKey: .browser)
        try container.encodeIfPresent(self.browserEngine, forKey: .browserEngine)
        try container.encodeIfPresent(self.continent, forKey: .continent)
        try container.encodeIfPresent(self.country, forKey: .country)
        try container.encodeIfPresent(self.cpu, forKey: .cpu)
        try container.encodeIfPresent(self.creatorId, forKey: .creatorId)
        try container.encodeIfPresent(self.device, forKey: .device)
        try container.encodeIfPresent(self.deviceType, forKey: .deviceType)
        try container.encodeIfPresent(self.dStorageUrl, forKey: .dStorageUrl)
        if self.errorRate != nil {
            try container.encode(self._errorRate, forKey: .errorRate)
        }
        if self.exitsBeforeStart != nil {
            try container.encode(self._exitsBeforeStart, forKey: .exitsBeforeStart)
        }
        try container.encodeIfPresent(self.geohas, forKey: .geohas)
        try container.encodeIfPresent(self.os, forKey: .os)
        try container.encodeIfPresent(self.playbackId, forKey: .playbackId)
        if self.rebufferRatio != nil {
            try container.encode(self._rebufferRatio, forKey: .rebufferRatio)
        }
        try container.encodeIfPresent(self.subdivision, forKey: .subdivision)
        if self.timestamp != nil {
            try container.encode(self._timestamp, forKey: .timestamp)
        }
        try container.encodeIfPresent(self.timezone, forKey: .timezone)
        if self.ttffMs != nil {
            try container.encode(self._ttffMs, forKey: .ttffMs)
        }
        try container.encodeIfPresent(self.viewerId, forKey: .viewerId)
    }
}

extension Shared.ViewershipMetric {
    var timestampWrapper: DecimalSerialized<Double?> {
        return _timestamp
    }
    var playtimeMinsWrapper: DecimalSerialized<Double> {
        return _playtimeMins
    }
    var ttffMsWrapper: DecimalSerialized<Double?> {
        return _ttffMs
    }
    var rebufferRatioWrapper: DecimalSerialized<Double?> {
        return _rebufferRatio
    }
    var errorRateWrapper: DecimalSerialized<Double?> {
        return _errorRate
    }
    var exitsBeforeStartWrapper: DecimalSerialized<Double?> {
        return _exitsBeforeStart
    }
}