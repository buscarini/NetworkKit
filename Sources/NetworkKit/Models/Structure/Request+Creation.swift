//
//  Request+Creation.swift
//  NetworkKit
//
//  Created by José Manuel Sánchez Peñarroja on 15/12/20.
//

import Foundation

extension Request {
	public static func get(
		_ url: RequestUrl,
		_ params: [URLQueryItem]
	) -> Self {
		Request(
			method: .get,
			url: url,
			queryItems: params,
			type: .request(parameters: [:], parametersEncoding: .url)
		)
	}
	
	public static func post(
		_ url: RequestUrl,
		_ params: [String: AnyHashable],
		encoding: ParametersEncoding
	) -> Self {
		Request(
			method: .post,
			url: url,
			queryItems: [],
			type: .request(parameters: params, parametersEncoding: encoding)
		)
	}
	
	public static func put(
		_ url: RequestUrl,
		_ params: [String: AnyHashable],
		encoding: ParametersEncoding
	) -> Self {
		Request(
			method: .put,
			url: url,
			queryItems: [],
			type: .request(parameters: params, parametersEncoding: encoding)
		)
	}
}
