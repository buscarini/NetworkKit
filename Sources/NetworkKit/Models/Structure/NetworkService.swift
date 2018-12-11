import Foundation

public struct NetworkService {
	public typealias Log = (String) -> ()
	public typealias CompletionHandler<T> = (_ result: NetworkResponse<T?>) -> Void
	public typealias CancelRequest = () -> Void
	public typealias Progress = (UInt64, UInt64) -> Void

	public var baseUrl: URL
	
	public var request: (Request<Data>, Log, Progress, CompletionHandler<Data>) -> CancelRequest
	
	public init(baseUrl: URL, request: @escaping (Request<Data>, Log, Progress, CompletionHandler<Data>) -> CancelRequest) {
		self.baseUrl = baseUrl
		self.request = request
	}
	
	public func request<T: Decodable>(
		_ request: Request<T>,
		log: @escaping Log,
		progress: @escaping Progress,
		completion: @escaping CompletionHandler<T>
	) -> CancelRequest {
		
		return self.request(request.coerce(Data.self), log, progress, { networkResponse in
			
			switch networkResponse {
				
			case .success(let data, let response):
				do {
					let dataParsed = try T.parse(from: data)
					let finalResponse = NetworkResponse.success(dataParsed, response)
					completion(finalResponse)
				} catch let error {
					let finalResponse: NetworkResponse<T?> = NetworkResponse.encodingError(error)
					completion(finalResponse)
				}
				
			case .encodingError(let errror):
				let finalResponse: NetworkResponse<T?> = NetworkResponse.encodingError(errror)
				completion(finalResponse)
				
			case .networkError(let responseError, let response):
				let finalResponse: NetworkResponse<T?> = NetworkResponse.networkError(responseError, response)
				completion(finalResponse)
			}
			
		})
	}
}
