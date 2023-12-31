// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Parameters for the transcode-file task
    public struct TranscodeFile {
        /// Decides if the output video should include C2PA signature
        public let c2pa: Bool?
        public let creatorId: Shared.InputCreatorId?
        /// Input video file to transcode
        public let input: Shared.TaskInput?
        /// Output formats
        public let outputs: Shared.TaskOutputs?
        public let profiles: [Shared.TranscodeProfile]?
        /// Storage for the output files
        public let storage: Shared.TaskStorage?
        /// How many seconds the duration of each output segment should
        /// be
        /// 
        @DecimalSerialized
        public private(set) var targetSegmentSizeSecs: Double?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter c2pa: Decides if the output video should include C2PA signature
        /// - Parameter input: Input video file to transcode
        /// - Parameter outputs: Output formats
        /// - Parameter storage: Storage for the output files
        /// - Parameter targetSegmentSizeSecs: How many seconds the duration of each output segment should
        /// be
        /// 
        ///
        public init(c2pa: Bool? = nil, creatorId: Shared.InputCreatorId? = nil, input: Shared.TaskInput? = nil, outputs: Shared.TaskOutputs? = nil, profiles: [Shared.TranscodeProfile]? = nil, storage: Shared.TaskStorage? = nil, targetSegmentSizeSecs: Double? = nil) {
            self.c2pa = c2pa
            self.creatorId = creatorId
            self.input = input
            self.outputs = outputs
            self.profiles = profiles
            self.storage = storage
            self._targetSegmentSizeSecs = DecimalSerialized<Double?>(wrappedValue: targetSegmentSizeSecs)
        }
    }
}

extension Shared.TranscodeFile: Codable {
    enum CodingKeys: String, CodingKey {
        case c2pa
        case creatorId
        case input
        case outputs
        case profiles
        case storage
        case targetSegmentSizeSecs
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.c2pa = try container.decodeIfPresent(Bool.self, forKey: .c2pa)
        self.creatorId = try container.decodeIfPresent(Shared.InputCreatorId.self, forKey: .creatorId)
        self.input = try container.decodeIfPresent(Shared.TaskInput.self, forKey: .input)
        self.outputs = try container.decodeIfPresent(Shared.TaskOutputs.self, forKey: .outputs)
        self.profiles = try container.decodeIfPresent([Shared.TranscodeProfile].self, forKey: .profiles)
        self.storage = try container.decodeIfPresent(Shared.TaskStorage.self, forKey: .storage)
        self._targetSegmentSizeSecs = try container.decodeIfPresent(DecimalSerialized<Double?>.self, forKey: .targetSegmentSizeSecs) ?? DecimalSerialized<Double?>(wrappedValue: nil)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(self.c2pa, forKey: .c2pa)
        try container.encodeIfPresent(self.creatorId, forKey: .creatorId)
        try container.encodeIfPresent(self.input, forKey: .input)
        try container.encodeIfPresent(self.outputs, forKey: .outputs)
        try container.encodeIfPresent(self.profiles, forKey: .profiles)
        try container.encodeIfPresent(self.storage, forKey: .storage)
        if self.targetSegmentSizeSecs != nil {
            try container.encode(self._targetSegmentSizeSecs, forKey: .targetSegmentSizeSecs)
        }
    }
}

extension Shared.TranscodeFile {
    var targetSegmentSizeSecsWrapper: DecimalSerialized<Double?> {
        return _targetSegmentSizeSecs
    }
}
