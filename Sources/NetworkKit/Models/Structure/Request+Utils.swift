//
//  Request+Utils.swift
//  Pods-TRNNetworkKit_Example
//
//  Created by José Manuel Sánchez Peñarroja on 15/1/18.
//

import Foundation

public extension Request {
	public func description(_ baseUrl: URL) -> String {
		let url = fullUrl(baseUrl: baseUrl)
		return [
			"method: \(method)",
			"url: \(url)",
			"type: \(type)",
			"timeout: \(timeout)",
			"headers: \(headers?.description ?? "")",
			"successCodes: \(successCodes)"
		].joined(separator: "\n")
	}
}
