//
//  NetworkService+Utils.swift
//  NetworkKit
//
//  Created by José Manuel Sánchez Peñarroja on 11/12/2018.
//

import Foundation

public extension NetworkService {
	@discardableResult
	func request(
		_ request: Request<Data>,
		log: @escaping Log,
		completion: @escaping CompletionHandler<Data>
		) -> CancelRequest {
		return self.performRequest(baseUrl, request, log, { _, _ in }, completion)
	}
	
	@discardableResult
	func request<T: Decodable>(
		_ request: Request<T>,
		log: @escaping Log,
		completion: @escaping CompletionHandler<T>
		) -> CancelRequest {
		return self.request(request, log: log, progress: { _, _ in }, completion: completion)
	}
	
	public func request<T: Decodable>(
		_ request: Request<T>,
		log: @escaping Log,
		progress: @escaping Progress,
		completion: @escaping CompletionHandler<T>
		) -> CancelRequest {
		
		return self.performRequest(baseUrl, request.coerce(Data.self), log, progress, { networkResponse in
			
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
