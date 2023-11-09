// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.


import Foundation

class _AssetAPI: AssetAPI {
    private let client: Client

    init(client: Client) {
        self.client = client
    }
    
    public func getAssets() async throws -> Response<Operations.GetAssetsResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetAssetsRequest(with: configuration)
            },
            handleResponse: handleGetAssetsResponse
        )
    }
    
    public func requestUpload(request: Shared.NewAssetPayload) async throws -> Response<Operations.RequestUploadResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureRequestUploadRequest(with: configuration, request: request)
            },
            handleResponse: handleRequestUploadResponse
        )
    }
    
    public func uploadAssetViaURL(request: Shared.NewAssetPayload) async throws -> Response<Operations.UploadAssetViaURLResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureUploadAssetViaURLRequest(with: configuration, request: request)
            },
            handleResponse: handleUploadAssetViaURLResponse
        )
    }
    
    public func deleteAsset(request: Operations.DeleteAssetRequest) async throws -> Response<Operations.DeleteAssetResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureDeleteAssetRequest(with: configuration, request: request)
            },
            handleResponse: handleDeleteAssetResponse
        )
    }
    
    public func getAsset(request: Operations.GetAssetRequest) async throws -> Response<Operations.GetAssetResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configureGetAssetRequest(with: configuration, request: request)
            },
            handleResponse: handleGetAssetResponse
        )
    }
    
    public func patchAssetAssetId(request: Operations.PatchAssetAssetIdRequest) async throws -> Response<Operations.PatchAssetAssetIdResponse> {
        return try await client.makeRequest(
            configureRequest: { configuration in
                try configurePatchAssetAssetIdRequest(with: configuration, request: request)
            },
            handleResponse: handlePatchAssetAssetIdResponse
        )
    }

}

// MARK: - Request Configuration

private func configureGetAssetsRequest(with configuration: URLRequestConfiguration) throws {
    configuration.path = "/asset"
    configuration.method = .get
    configuration.telemetryHeader = .userAgent
}

private func configureRequestUploadRequest(with configuration: URLRequestConfiguration, request: Shared.NewAssetPayload) throws {
    configuration.path = "/asset/request-upload"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

private func configureUploadAssetViaURLRequest(with configuration: URLRequestConfiguration, request: Shared.NewAssetPayload) throws {
    configuration.path = "/asset/upload/url"
    configuration.method = .post
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

private func configureDeleteAssetRequest(with configuration: URLRequestConfiguration, request: Operations.DeleteAssetRequest) throws {
    configuration.path = "/asset/{assetId}"
    configuration.method = .delete
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configureGetAssetRequest(with configuration: URLRequestConfiguration, request: Operations.GetAssetRequest) throws {
    configuration.path = "/asset/{assetId}"
    configuration.method = .get
    configuration.pathParameterSerializable = request
    configuration.telemetryHeader = .userAgent
}

private func configurePatchAssetAssetIdRequest(with configuration: URLRequestConfiguration, request: Operations.PatchAssetAssetIdRequest) throws {
    configuration.path = "/asset/{assetId}"
    configuration.method = .patch
    configuration.pathParameterSerializable = request
    configuration.contentType = "application/json"
    configuration.body = try jsonEncoder().encode(request.assetPatchPayload)
    if configuration.body == nil {
        throw SerializationError.missingRequiredRequestBody
    }
    configuration.telemetryHeader = .userAgent
}

// MARK: - Response Handlers

private func handleGetAssetsResponse(response: Client.APIResponse) throws -> Operations.GetAssetsResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .classes(try JSONDecoder().decode([Shared.Asset].self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleRequestUploadResponse(response: Client.APIResponse) throws -> Operations.RequestUploadResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.RequestUploadResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleUploadAssetViaURLResponse(response: Client.APIResponse) throws -> Operations.UploadAssetViaURLResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .object(try JSONDecoder().decode(Operations.UploadAssetViaURLResponseBody.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handleDeleteAssetResponse(response: Client.APIResponse) throws -> Operations.DeleteAssetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 204 { 
        return .empty
    }

    return .empty
}

private func handleGetAssetResponse(response: Client.APIResponse) throws -> Operations.GetAssetResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .asset(try JSONDecoder().decode(Shared.Asset.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}

private func handlePatchAssetAssetIdResponse(response: Client.APIResponse) throws -> Operations.PatchAssetAssetIdResponse {
    let httpResponse = response.httpResponse
    
    if httpResponse.statusCode == 200 { 
        if httpResponse.contentType.matchContentType(pattern: "application/json"), let data = response.data {
            do {
                return .asset(try JSONDecoder().decode(Shared.Asset.self, from: data))
            } catch {
                throw ResponseHandlerError.failedToDecodeJSON(error)
            }
        }
    }

    return .empty
}
