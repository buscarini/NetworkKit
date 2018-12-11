import Foundation

public struct MultipartParameter: Equatable, Hashable {
    public var data: Data
    public var fileParameter: MultipartFileParameter?

    public init(data: Data, fileParameter: MultipartFileParameter?) {
        self.data = data
        self.fileParameter = fileParameter
    }
}
