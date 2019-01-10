import Foundation

public enum ParametersEncoding {
    case url
    case json
	case other((URLRequest, [String: Any]) throws -> URLRequest)
}

extension ParametersEncoding: Equatable {
	public static func == (left: ParametersEncoding, right: ParametersEncoding) -> Bool {
		switch (left, right) {
		case (.url, .url):
			return true
		case (.json, .json):
			return true
		case (.other, .other):
			return true
		default:
			return false
		}
	}
}

extension ParametersEncoding: Hashable {
	public var hashValue: Int {
		switch self {
		case .url:
			return "url".hashValue
		case .json:
			return "json".hashValue
		case .other:
			return "other".hashValue
		}
	}
}

