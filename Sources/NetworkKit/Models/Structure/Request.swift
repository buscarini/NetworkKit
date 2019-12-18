import Foundation

public struct Request<T> {
	public var method: HTTPMethod
	public var url: RequestUrl
	public var type: RequestType
	public var timeout: TimeInterval
	public var headers: [String: String]?
	public var successCodes: Range<Int>
	public var extraQueryItems: [URLQueryItem]
	public var cachePolicy: URLRequest.CachePolicy
	
	public init(
		method: HTTPMethod = .get,
		url: RequestUrl,
		type: RequestType = RequestType.default,
		timeout: TimeInterval = 50,
		headers: [String: String]? = nil,
		successCodes: Range<Int> = 200 ..< 300,
		extraQueryItems: [URLQueryItem] = [], // For post requests with also a url query
		cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy
	) {
		self.method = method
		self.url = url
		self.type = type
		self.timeout = timeout
		self.headers = headers
		self.successCodes = successCodes
		self.extraQueryItems = extraQueryItems
		self.cachePolicy = cachePolicy
	}
	
	public func coerce<U>(_ type: U.Type) -> Request<U> {
		return unsafeBitCast(self, to: Request<U>.self)
	}
}

extension Request {
	public func fullUrl(baseUrl: URL) -> URL {
		switch self.url {
		case .endpoint(let endpoint):
			return baseUrl.appendingPathComponent(endpoint)
		case .full(let full):
			return full
		}
	}
}
