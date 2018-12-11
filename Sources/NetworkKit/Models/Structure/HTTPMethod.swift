import Foundation

public enum HTTPMethod: String, Equatable, Hashable, CaseIterable {
    case get
    case post
    case put
    case delete
	case patch
}
