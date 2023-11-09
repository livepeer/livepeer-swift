// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

extension Shared {
    /// Parameters of the task
    public struct Params {
        /// Parameters for the export task
        public let export: Shared.ExportTaskParams1?
        /// Parameters for the export-data task
        public let exportData: Shared.TaskExportData?
        /// Parameters for the upload task
        public let `import`: Shared.Upload?
        /// Parameters for the transcode task
        public let transcode: Shared.Transcode?
        /// Parameters for the transcode-file task
        public let transcodeFile: Shared.TranscodeFile?
        /// Parameters for the upload task
        public let upload: Shared.TaskUpload?

        /// Creates an object with the specified parameters
        ///
        /// - Parameter export: Parameters for the export task
        /// - Parameter exportData: Parameters for the export-data task
        /// - Parameter `import`: Parameters for the upload task
        /// - Parameter transcode: Parameters for the transcode task
        /// - Parameter transcodeFile: Parameters for the transcode-file task
        /// - Parameter upload: Parameters for the upload task
        ///
        public init(export: Shared.ExportTaskParams1? = nil, exportData: Shared.TaskExportData? = nil, `import`: Shared.Upload? = nil, transcode: Shared.Transcode? = nil, transcodeFile: Shared.TranscodeFile? = nil, upload: Shared.TaskUpload? = nil) {
            self.export = export
            self.exportData = exportData
            self.`import` = `import`
            self.transcode = transcode
            self.transcodeFile = transcodeFile
            self.upload = upload
        }
    }
}

extension Shared.Params: Codable {
    enum CodingKeys: String, CodingKey {
        case export
        case exportData
        case `import` = "import"
        case transcode
        case transcodeFile = "transcode-file"
        case upload
    }
}
