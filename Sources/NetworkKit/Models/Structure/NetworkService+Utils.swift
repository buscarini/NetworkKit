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
		return self.request(request, log: log, progress: { _, _ in }, completion: completion)
	}
	
	@discardableResult
	func request<T: Decodable>(
		_ request: Request<T>,
		log: @escaping Log,
		completion: @escaping CompletionHandler<T>
		) -> CancelRequest {
		return self.request(request, log: log, progress: { _, _ in }, completion: completion)
	}
}
