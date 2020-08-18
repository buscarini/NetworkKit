import Foundation

public enum HTTPMethod: String, Equatable, Hashable, CaseIterable {
	case get
	case head
	case post
	case put
	case delete
	case connect
	case options
	case trace
	case patch
}
