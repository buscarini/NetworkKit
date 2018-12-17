import Foundation

public struct NetworkService {
	public typealias Log = (String) -> ()
	public typealias CompletionHandler<T> = (_ result: NetworkResponse<T?>) -> Void
	public typealias CancelRequest = () -> Void
	public typealias Progress = (Int64, Int64) -> Void

	public typealias RequestFunction = (URL, Request<Data>, @escaping Log, @escaping Progress, @escaping CompletionHandler<Data>) -> CancelRequest
	
	public var baseUrl: URL
	
	public var performRequest: RequestFunction
	
	public init(baseUrl: URL, request performRequest: @escaping RequestFunction) {
		self.baseUrl = baseUrl
		self.performRequest = performRequest
	}
}
