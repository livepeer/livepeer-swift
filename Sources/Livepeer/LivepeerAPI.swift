// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

/// Defines the operations supported by the API.
///
/// This protocol defines all of the operations supported by the API. It is implemented by ``Client`` which can be used to make these API requests and handle their responses.
///
/// ## Topics
///
/// ### API calls
///
/// These methods allow you to make requests to the API.
///
/// - ``getStream(request:)``
/// - ``postStream(request:)``
/// - ``deleteStreamId(request:)``
/// - ``getStreamId(request:)``
/// - ``patchStreamId(request:)``
/// - ``deleteStreamIdTerminate(request:)``
/// - ``getMultistreamTarget()``
/// - ``postMultistreamTarget(request:)``
/// - ``deleteMultistreamTargetId(request:)``
/// - ``getMultistreamTargetId(request:)``
/// - ``patchMultistreamTargetId(request:)``
/// - ``getWebhook()``
/// - ``postWebhook()``
/// - ``deleteWebhookId(request:)``
/// - ``getWebhookId(request:)``
/// - ``putWebhookId(request:)``
/// - ``getAsset()``
/// - ``postAssetRequestUpload(request:)``
/// - ``postAssetUploadUrl(request:)``
/// - ``deleteAssetAssetId(request:)``
/// - ``getAssetAssetId(request:)``
/// - ``patchAssetAssetId(request:)``
/// - ``postClip(request:)``
/// - ``getStreamIdClips(request:)``
/// - ``postStreamIdCreateMultistreamTarget(request:)``
/// - ``deleteStreamIdMultistreamTargetId(request:)``
/// - ``getSessionIdClips(request:)``
/// - ``postRoom()``
/// - ``deleteRoomId(request:)``
/// - ``getRoomId(request:)``
/// - ``deleteRoomIdEgress(request:)``
/// - ``postRoomIdEgress(request:)``
/// - ``postRoomIdUser(request:)``
/// - ``deleteRoomIdUserUserId(request:)``
/// - ``getRoomIdUserUserId(request:)``
/// - ``putRoomIdUserUserId(request:)``
/// - ``getDataViewsQuery(request:)``
/// - ``getDataViewsQueryCreator(request:)``
/// - ``getDataViewsQueryTotalPlaybackId(request:)``
/// - ``getDataUsageQuery(request:)``
/// - ``getSession()``
/// - ``getSessionId(request:)``
/// - ``getStreamParentIdSessions(request:)``
/// - ``getAccessControlSigningKey()``
/// - ``postAccessControlSigningKey()``
/// - ``deleteAccessControlSigningKeyKeyId(request:)``
/// - ``getAccessControlSigningKeyKeyId(request:)``
/// - ``patchAccessControlSigningKeyKeyId(request:)``
/// - ``getTask()``
/// - ``getTaskTaskId(request:)``
/// - ``postTranscode(request:)``
/// - ``getPlaybackId(request:)``
///
public protocol LivepeerAPI {
    /// Retrieve streams
    /// 
    /// - Parameter request: A ``Operations/GetStreamRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetStreamResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getStream(request: Operations.GetStreamRequest) async throws -> Response<Operations.GetStreamResponse>
    /// The only parameter you are required to set is the name of your stream,
    /// but we also highly recommend that you define transcoding profiles
    /// parameter that suits your specific broadcasting configuration.
    /// \
    /// \
    /// If you do not define transcoding rendition profiles when creating the
    /// stream, a default set of profiles will be used. These profiles include
    /// 240p,  360p, 480p and 720p.
    /// \
    /// \
    /// The playback policy is set to public by default for new streams. It can
    /// also be added upon the creation of a new stream by adding
    /// `"playbackPolicy": {"type": "jwt"}`
    /// 
    /// 
    /// - Parameter request: A ``Shared/NewStreamPayload`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostStreamResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postStream(request: Shared.NewStreamPayload) async throws -> Response<Operations.PostStreamResponse>
    /// 
    /// This will also suspend any active stream sessions, so make sure to wait
    /// until the stream has finished. To explicitly interrupt an active
    /// session, consider instead updating the suspended field in the stream
    /// using the PATCH stream API.
    /// 
    /// 
    /// - Parameter request: A ``Operations/DeleteStreamIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteStreamIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteStreamId(request: Operations.DeleteStreamIdRequest) async throws -> Response<Operations.DeleteStreamIdResponse>
    /// Retrieve a stream
    /// 
    /// - Parameter request: A ``Operations/GetStreamIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetStreamIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getStreamId(request: Operations.GetStreamIdRequest) async throws -> Response<Operations.GetStreamIdResponse>
    /// Update a stream
    /// 
    /// - Parameter request: A ``Operations/PatchStreamIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PatchStreamIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func patchStreamId(request: Operations.PatchStreamIdRequest) async throws -> Response<Operations.PatchStreamIdResponse>
    /// `DELETE /stream/{id}/terminate` can be used to terminate an ongoing
    /// session on a live stream. Unlike suspending the stream, it allows the
    /// streamer to restart streaming even immediately, but it will force
    /// terminate the current session and stop the recording.
    /// \
    /// \
    /// A 204 No Content status response indicates the stream was successfully
    /// terminated.
    /// 
    /// 
    /// - Parameter request: A ``Operations/DeleteStreamIdTerminateRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteStreamIdTerminateResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteStreamIdTerminate(request: Operations.DeleteStreamIdTerminateRequest) async throws -> Response<Operations.DeleteStreamIdTerminateResponse>
    /// Retrieve Multistream Targets
    /// 
    /// - Returns: A ``Operations/GetMultistreamTargetResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getMultistreamTarget() async throws -> Response<Operations.GetMultistreamTargetResponse>
    /// Create a multistream target
    /// 
    /// - Parameter request: A ``Shared/MultistreamTargetInput`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostMultistreamTargetResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postMultistreamTarget(request: Shared.MultistreamTargetInput) async throws -> Response<Operations.PostMultistreamTargetResponse>
    /// Make sure to remove any references to the target on existing
    /// streams before actually deleting it from the API.
    /// 
    /// 
    /// - Parameter request: A ``Operations/DeleteMultistreamTargetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteMultistreamTargetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteMultistreamTargetId(request: Operations.DeleteMultistreamTargetIdRequest) async throws -> Response<Operations.DeleteMultistreamTargetIdResponse>
    /// Retrieve a multistream target
    /// 
    /// - Parameter request: A ``Operations/GetMultistreamTargetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetMultistreamTargetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getMultistreamTargetId(request: Operations.GetMultistreamTargetIdRequest) async throws -> Response<Operations.GetMultistreamTargetIdResponse>
    /// Update Multistream Target
    /// 
    /// - Parameter request: A ``Operations/PatchMultistreamTargetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PatchMultistreamTargetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func patchMultistreamTargetId(request: Operations.PatchMultistreamTargetIdRequest) async throws -> Response<Operations.PatchMultistreamTargetIdResponse>
    /// Retrieve a Webhook
    /// 
    /// - Returns: A ``Operations/GetWebhookResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getWebhook() async throws -> Response<Operations.GetWebhookResponse>
    /// To create a new webhook, you need to make an API call with the events you want to listen for and the URL that will be called when those events occur.
    /// 
    /// 
    /// - Returns: A ``Operations/PostWebhookResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postWebhook() async throws -> Response<Operations.PostWebhookResponse>
    /// Delete a webhook
    /// 
    /// - Parameter request: A ``Operations/DeleteWebhookIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteWebhookIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteWebhookId(request: Operations.DeleteWebhookIdRequest) async throws -> Response<Operations.DeleteWebhookIdResponse>
    /// Retrieve a webhook
    /// 
    /// - Parameter request: A ``Operations/GetWebhookIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetWebhookIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getWebhookId(request: Operations.GetWebhookIdRequest) async throws -> Response<Operations.GetWebhookIdResponse>
    /// Update a webhook
    /// 
    /// - Parameter request: A ``Operations/PutWebhookIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PutWebhookIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func putWebhookId(request: Operations.PutWebhookIdRequest) async throws -> Response<Operations.PutWebhookIdResponse>
    /// Retrieve assets
    /// 
    /// - Returns: A ``Operations/GetAssetResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getAsset() async throws -> Response<Operations.GetAssetResponse>
    /// To upload an asset, your first need to request for a direct upload URL
    /// and only then actually upload the contents of the asset.
    /// \
    /// \
    /// Once you created a upload link, you have 2 options, resumable or direct
    /// upload. For a more reliable experience, you should use resumable uploads
    /// which will work better for users with unreliable or slow network
    /// connections. If you want a simpler implementation though, you should
    /// just use a direct upload.
    /// 
    /// 
    /// ## Direct Upload
    /// For a direct upload, make a PUT request to the URL received in the url
    /// field of the response above, with the raw video file as the request
    /// body. response above:
    /// 
    /// 
    /// ## Resumable Upload
    /// Livepeer supports resumable uploads via Tus. This section provides a
    /// simple example of how to use tus-js-client to upload a video file.
    /// \
    /// \
    /// From the previous section, we generated a URL to upload a video file to
    /// Livepeer on POST /api/asset/request-upload. You should use the
    /// tusEndpoint field of the response to upload the video file and track the
    /// progress:
    /// 
    /// ``` 
    /// # This assumes there is an `input` element of `type="file"` with id
    /// `fileInput` in the HTML
    /// 
    /// 
    /// const input = document.getElementById('fileInput');
    /// 
    /// const file = input.files[0];
    /// 
    /// const upload = new tus.Upload(file, {
    ///   endpoint: tusEndpoint, // URL from `tusEndpoint` field in the
    /// `/request-upload` response
    ///   metadata: {
    ///     filename,
    ///     filetype: 'video/mp4',
    ///   },
    ///   uploadSize: file.size,
    ///   onError(err) {
    ///     console.error('Error uploading file:', err);
    ///   },
    ///   onProgress(bytesUploaded, bytesTotal) {
    ///     const percentage = ((bytesUploaded / bytesTotal) * 100).toFixed(2);
    ///     console.log('Uploaded ' + percentage + '%');
    ///   },
    ///   onSuccess() {
    ///     console.log('Upload finished:', upload.url);
    ///   },
    /// });
    /// 
    /// const previousUploads = await upload.findPreviousUploads();
    /// 
    /// if (previousUploads.length > 0) {
    ///   upload.resumeFromPreviousUpload(previousUploads[0]);
    /// }
    /// 
    /// upload.start();
    /// 
    /// ```
    /// 
    /// > Note: If you are using tus from node.js, you need to add a custom URL
    /// storage to enable resuming from previous uploads. On the browser, this
    /// is enabled by default using local storage. In node.js, add urlStorage:
    /// new tus.FileUrlStorage("path/to/tmp/file"), to the UploadFile object
    /// definition above.
    /// 
    /// 
    /// - Parameter request: A ``Shared/NewAssetPayload`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostAssetRequestUploadResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postAssetRequestUpload(request: Shared.NewAssetPayload) async throws -> Response<Operations.PostAssetRequestUploadResponse>
    /// Upload asset via URL
    /// 
    /// - Parameter request: A ``Shared/NewAssetPayload`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostAssetUploadUrlResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postAssetUploadUrl(request: Shared.NewAssetPayload) async throws -> Response<Operations.PostAssetUploadUrlResponse>
    /// Delete an asset
    /// 
    /// - Parameter request: A ``Operations/DeleteAssetAssetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteAssetAssetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteAssetAssetId(request: Operations.DeleteAssetAssetIdRequest) async throws -> Response<Operations.DeleteAssetAssetIdResponse>
    /// Retrieves an asset
    /// 
    /// - Parameter request: A ``Operations/GetAssetAssetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetAssetAssetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getAssetAssetId(request: Operations.GetAssetAssetIdRequest) async throws -> Response<Operations.GetAssetAssetIdResponse>
    /// Patch an asset
    /// 
    /// - Parameter request: A ``Operations/PatchAssetAssetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PatchAssetAssetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func patchAssetAssetId(request: Operations.PatchAssetAssetIdRequest) async throws -> Response<Operations.PatchAssetAssetIdResponse>
    /// Create a clip
    /// 
    /// - Parameter request: A ``Shared/ClipPayload`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostClipResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postClip(request: Shared.ClipPayload) async throws -> Response<Operations.PostClipResponse>
    /// Retrieve clips of a livestream
    /// 
    /// - Parameter request: A ``Operations/GetStreamIdClipsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetStreamIdClipsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getStreamIdClips(request: Operations.GetStreamIdClipsRequest) async throws -> Response<Operations.GetStreamIdClipsResponse>
    /// Add a multistream target
    /// 
    /// - Parameter request: A ``Operations/PostStreamIdCreateMultistreamTargetRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostStreamIdCreateMultistreamTargetResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postStreamIdCreateMultistreamTarget(request: Operations.PostStreamIdCreateMultistreamTargetRequest) async throws -> Response<Operations.PostStreamIdCreateMultistreamTargetResponse>
    /// Remove a multistream target
    /// 
    /// - Parameter request: A ``Operations/DeleteStreamIdMultistreamTargetIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteStreamIdMultistreamTargetIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteStreamIdMultistreamTargetId(request: Operations.DeleteStreamIdMultistreamTargetIdRequest) async throws -> Response<Operations.DeleteStreamIdMultistreamTargetIdResponse>
    /// Retrieve clips of a session
    /// 
    /// - Parameter request: A ``Operations/GetSessionIdClipsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetSessionIdClipsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getSessionIdClips(request: Operations.GetSessionIdClipsRequest) async throws -> Response<Operations.GetSessionIdClipsResponse>
    /// Create a multiparticipant livestreaming room.
    /// 
    /// 
    /// - Returns: A ``Operations/PostRoomResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postRoom() async throws -> Response<Operations.PostRoomResponse>
    /// Delete a room
    /// 
    /// - Parameter request: A ``Operations/DeleteRoomIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteRoomIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteRoomId(request: Operations.DeleteRoomIdRequest) async throws -> Response<Operations.DeleteRoomIdResponse>
    /// Retrieve a room
    /// 
    /// - Parameter request: A ``Operations/GetRoomIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetRoomIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getRoomId(request: Operations.GetRoomIdRequest) async throws -> Response<Operations.GetRoomIdResponse>
    /// Stop room RTMP egress
    /// 
    /// - Parameter request: A ``Operations/DeleteRoomIdEgressRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteRoomIdEgressResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteRoomIdEgress(request: Operations.DeleteRoomIdEgressRequest) async throws -> Response<Operations.DeleteRoomIdEgressResponse>
    /// Create a livestream for your room.
    /// This allows you to leverage livestreaming features like recording and HLS output.
    /// 
    /// 
    /// - Parameter request: A ``Operations/PostRoomIdEgressRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostRoomIdEgressResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postRoomIdEgress(request: Operations.PostRoomIdEgressRequest) async throws -> Response<Operations.PostRoomIdEgressResponse>
    /// Call this endpoint to add a user to a room, specifying a display name at a minimum.
    /// The response will contain a joining URL for Livepeer's default meeting app.
    /// Alternatively the joining token can be used with a custom app.
    /// 
    /// 
    /// - Parameter request: A ``Operations/PostRoomIdUserRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostRoomIdUserResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postRoomIdUser(request: Operations.PostRoomIdUserRequest) async throws -> Response<Operations.PostRoomIdUserResponse>
    /// Remove a user from the room
    /// 
    /// - Parameter request: A ``Operations/DeleteRoomIdUserUserIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteRoomIdUserUserIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteRoomIdUserUserId(request: Operations.DeleteRoomIdUserUserIdRequest) async throws -> Response<Operations.DeleteRoomIdUserUserIdResponse>
    /// Get user details
    /// 
    /// - Parameter request: A ``Operations/GetRoomIdUserUserIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetRoomIdUserUserIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getRoomIdUserUserId(request: Operations.GetRoomIdUserUserIdRequest) async throws -> Response<Operations.GetRoomIdUserUserIdResponse>
    /// Update properties for a user.
    /// 
    /// - Parameter request: A ``Operations/PutRoomIdUserUserIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PutRoomIdUserUserIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func putRoomIdUserUserId(request: Operations.PutRoomIdUserUserIdRequest) async throws -> Response<Operations.PutRoomIdUserUserIdResponse>
    /// Requires a private (non-CORS) API key to be used.
    /// 
    /// 
    /// - Parameter request: A ``Operations/GetDataViewsQueryRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetDataViewsQueryResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getDataViewsQuery(request: Operations.GetDataViewsQueryRequest) async throws -> Response<Operations.GetDataViewsQueryResponse>
    /// Requires a proof of ownership to be sent in the request, which for now is just the assetId or streamId parameters (1 of those must be in the query-string).
    /// 
    /// 
    /// - Parameter request: A ``Operations/GetDataViewsQueryCreatorRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetDataViewsQueryCreatorResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getDataViewsQueryCreator(request: Operations.GetDataViewsQueryCreatorRequest) async throws -> Response<Operations.GetDataViewsQueryCreatorResponse>
    /// Allows querying for the public metrics for viewership about a video.
    /// This can be called from the frontend with a CORS key, or even
    /// unauthenticated.
    /// 
    /// 
    /// - Parameter request: A ``Operations/GetDataViewsQueryTotalPlaybackIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetDataViewsQueryTotalPlaybackIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getDataViewsQueryTotalPlaybackId(request: Operations.GetDataViewsQueryTotalPlaybackIdRequest) async throws -> Response<Operations.GetDataViewsQueryTotalPlaybackIdResponse>
    /// Query usage metrics
    /// 
    /// - Parameter request: A ``Operations/GetDataUsageQueryRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetDataUsageQueryResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getDataUsageQuery(request: Operations.GetDataUsageQueryRequest) async throws -> Response<Operations.GetDataUsageQueryResponse>
    /// Retrieve sessions
    /// 
    /// - Returns: A ``Operations/GetSessionResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getSession() async throws -> Response<Operations.GetSessionResponse>
    /// Retrieve a session
    /// 
    /// - Parameter request: A ``Operations/GetSessionIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetSessionIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getSessionId(request: Operations.GetSessionIdRequest) async throws -> Response<Operations.GetSessionIdResponse>
    /// Retrieve Recorded Sessions
    /// 
    /// - Parameter request: A ``Operations/GetStreamParentIdSessionsRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetStreamParentIdSessionsResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getStreamParentIdSessions(request: Operations.GetStreamParentIdSessionsRequest) async throws -> Response<Operations.GetStreamParentIdSessionsResponse>
    /// Retrieves signing keys
    /// 
    /// - Returns: A ``Operations/GetAccessControlSigningKeyResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getAccessControlSigningKey() async throws -> Response<Operations.GetAccessControlSigningKeyResponse>
    /// 
    /// The publicKey is a representation of the public key, encoded as base 64 and is passed as a string, and  the privateKey is displayed only on creation. This is the only moment where the client can save the private key, otherwise it will be lost. Remember to decode your string when signing JWTs.
    /// Up to 10 signing keys can be generated, after that you must delete at least one signing key to create a new one.
    /// 
    /// 
    /// - Returns: A ``Operations/PostAccessControlSigningKeyResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postAccessControlSigningKey() async throws -> Response<Operations.PostAccessControlSigningKeyResponse>
    /// Delete Signing Key
    /// 
    /// - Parameter request: A ``Operations/DeleteAccessControlSigningKeyKeyIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/DeleteAccessControlSigningKeyKeyIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func deleteAccessControlSigningKeyKeyId(request: Operations.DeleteAccessControlSigningKeyKeyIdRequest) async throws -> Response<Operations.DeleteAccessControlSigningKeyKeyIdResponse>
    /// Retrieves a signing key
    /// 
    /// - Parameter request: A ``Operations/GetAccessControlSigningKeyKeyIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetAccessControlSigningKeyKeyIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getAccessControlSigningKeyKeyId(request: Operations.GetAccessControlSigningKeyKeyIdRequest) async throws -> Response<Operations.GetAccessControlSigningKeyKeyIdResponse>
    /// Update a signing key
    /// 
    /// - Parameter request: A ``Operations/PatchAccessControlSigningKeyKeyIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/PatchAccessControlSigningKeyKeyIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func patchAccessControlSigningKeyKeyId(request: Operations.PatchAccessControlSigningKeyKeyIdRequest) async throws -> Response<Operations.PatchAccessControlSigningKeyKeyIdResponse>
    /// Retrieve Tasks
    /// 
    /// - Returns: A ``Operations/GetTaskResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getTask() async throws -> Response<Operations.GetTaskResponse>
    /// Retrieve a Task
    /// 
    /// - Parameter request: A ``Operations/GetTaskTaskIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetTaskTaskIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getTaskTaskId(request: Operations.GetTaskTaskIdRequest) async throws -> Response<Operations.GetTaskTaskIdResponse>
    /// `POST /transcode` transcodes a video file and uploads the results to the
    /// specified storage service. 
    /// \
    /// \
    /// Transcoding is asynchronous so you will need to check the status of the
    /// task in order to determine when transcoding is complete. The `id` field
    /// in the response is the unique ID for the transcoding `Task`. The task
    /// status can be queried using the [GET tasks
    /// endpoint](https://docs.livepeer.org/reference/api/get-tasks):
    /// \
    /// \
    /// When `status.phase` is `completed`,  transcoding will be complete and
    /// the results will be stored in the storage service and the specified
    /// output location.
    /// \
    /// \
    /// The results will be available under `params.outputs.hls.path` and
    /// `params.outputs.mp4.path` in the specified storage service.
    /// ## Input
    /// \
    /// This endpoint currently supports the following inputs:
    /// - HTTP
    /// - S3 API Compatible Service
    /// \
    /// \
    /// **HTTP**
    /// \
    /// A public HTTP URL can be used to read a video file.
    /// ```json
    /// {
    ///     "url": "https://www.example.com/video.mp4"
    /// }
    /// ```
    /// | Name | Type   | Description                          |
    /// | ---- | ------ | ------------------------------------ |
    /// | url  | string | A public HTTP URL for the video file. |
    /// 
    /// Note: For IPFS HTTP gateway URLs, the API currently only supports “path
    /// style” URLs and does not support “subdomain style” URLs. The API will
    /// support both styles of URLs in a future update.
    /// \
    /// \
    /// **S3 API Compatible Service**
    /// \
    /// \
    /// S3 credentials can be used to authenticate with a S3 API compatible
    /// service to read a video file.
    /// 
    /// ```json
    /// {
    ///     "type": "s3",
    ///     "endpoint": "https://gateway.storjshare.io",
    ///     "credentials": {
    ///         "accessKeyId": "$ACCESS_KEY_ID",
    ///         "secretAccessKey": "$SECRET_ACCESS_KEY"
    ///     },
    ///     "bucket": "inbucket",
    ///     "path": "/video/source.mp4"
    /// }
    /// ```
    /// 
    /// 
    /// ## Storage
    /// \
    /// This endpoint currently supports the following storage services:
    /// - S3 API Compatible Service
    /// - Web3 Storage
    /// \
    /// \
    /// **S3 API Compatible Service**
    /// ```json
    /// {
    ///   "type": "s3",
    ///     "endpoint": "https://gateway.storjshare.io",
    ///     "credentials": {
    ///         "accessKeyId": "$ACCESS_KEY_ID",
    ///         "secretAccessKey": "$SECRET_ACCESS_KEY"
    ///     },
    ///     "bucket": "mybucket"
    /// }
    /// ```
    /// 
    /// **Web3 Storage**
    /// 
    /// ```json
    /// {
    ///   "type": "web3.storage",
    ///     "credentials": {
    ///         "proof": "$UCAN_DELEGATION_PROOF",
    ///     }
    /// }
    /// ```
    /// 
    /// 
    /// 
    /// ## Outputs
    /// \
    /// This endpoint currently supports the following output types:
    /// - HLS
    /// - MP4
    /// 
    /// **HLS**
    /// 
    /// ```json
    /// {
    ///   "hls": {
    ///         "path": "/samplevideo/hls"
    ///     }
    /// }
    /// ```
    /// 
    /// 
    /// **MP4**
    /// 
    /// ```json
    /// {
    ///   "mp4": {
    ///         "path": "/samplevideo/mp4"
    ///     }
    /// }
    /// ```
    /// 
    /// 
    /// - Parameter request: A ``Shared/TranscodePayload`` object describing the input to the API operation
    /// - Returns: A ``Operations/PostTranscodeResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func postTranscode(request: Shared.TranscodePayload) async throws -> Response<Operations.PostTranscodeResponse>
    /// Retrieve Playback Info
    /// 
    /// - Parameter request: A ``Operations/GetPlaybackIdRequest`` object describing the input to the API operation
    /// - Returns: A ``Operations/GetPlaybackIdResponse`` object describing the result of the API operation
    /// - Throws: An error of type ``LivepeerError``
    func getPlaybackId(request: Operations.GetPlaybackIdRequest) async throws -> Response<Operations.GetPlaybackIdResponse>
}
