// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// A model object
    public struct PlaybackInfoSource {
        public let hrn: Shared.Hrn
        public let type: Shared.PlaybackInfoSchemasType
        public let url: String
        @DecimalSerialized
        public private(set) var bitrate: Double?
        @DecimalSerialized
        public private(set) var height: Double?
        @DecimalSerialized
        public private(set) var size: Double?
        @DecimalSerialized
        public private(set) var width: Double?

        /// Creates an object with the specified parameters
        ///
        ///
        public init(hrn: Shared.Hrn, type: Shared.PlaybackInfoSchemasType, url: String, bitrate: Double? = nil, height: Double? = nil, size: Double? = nil, width: Double? = nil) {
            self.hrn = hrn
            self.type = type
            self.url = url
            self._bitrate = DecimalSerialized<Double?>(wrappedValue: bitrate)
            self._height = DecimalSerialized<Double?>(wrappedValue: height)
            self._size = DecimalSerialized<Double?>(wrappedValue: size)
            self._width = DecimalSerialized<Double?>(wrappedValue: width)
        }
    }
}

extension Shared.PlaybackInfoSource: Codable {
    enum CodingKeys: String, CodingKey {
        case hrn
        case type
        case url
        case bitrate
        case height
        case size
        case width
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.hrn = try container.decode(Shared.Hrn.self, forKey: .hrn)
        self.type = try container.decode(Shared.PlaybackInfoSchemasType.self, forKey: .type)
        self.url = try container.decode(String.self, forKey: .url)
        self._bitrate = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .bitrate) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._height = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .height) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._size = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .size) ?? DecimalSerialized<Double?>(wrappedValue: nil)
        self._width = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .width) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.hrn, forKey: .hrn)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.url, forKey: .url)
        if self.bitrate != nil {
            try container.encode(self._bitrate, forKey: .bitrate)
        }
        if self.height != nil {
            try container.encode(self._height, forKey: .height)
        }
        if self.size != nil {
            try container.encode(self._size, forKey: .size)
        }
        if self.width != nil {
            try container.encode(self._width, forKey: .width)
        }
    }
}

extension Shared.PlaybackInfoSource {
    var sizeWrapper: DecimalSerialized<Double?> {
        return _size
    }
    var widthWrapper: DecimalSerialized<Double?> {
        return _width
    }
    var heightWrapper: DecimalSerialized<Double?> {
        return _height
    }
    var bitrateWrapper: DecimalSerialized<Double?> {
        return _bitrate
    }
}