// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Phase of the asset storage
    public enum Phase: String, Codable, APIValue {
        case waiting = "waiting"
        case processing = "processing"
        case ready = "ready"
        case failed = "failed"
        case reverted = "reverted"
    }
}