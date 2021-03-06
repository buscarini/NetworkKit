import Foundation

public struct MultipartFileParameter: Equatable, Hashable {
    public var mimeType: String
    public var fileName: String?

    public init(mimeType: String, fileName: String?) {
        self.mimeType = mimeType
        self.fileName = fileName
    }
}
