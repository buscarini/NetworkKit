//
//  HTTPResponse.swift
//  Pods-TRNNetworkKit_Example
//
//  Created by José Manuel Sánchez Peñarroja on 15/1/18.
//

import Foundation

public struct HTTPResponse {
	public var responseCode: Int
	public var data: Data?
	public var url: URL
	public var headerFields: [AnyHashable: AnyHashable]?
	
	public init(responseCode: Int, data: Data?, url: URL,headerFields: [AnyHashable: AnyHashable]?) {
		self.responseCode = responseCode
		self.data = data
		self.url = url
		self.headerFields = headerFields
	}	
}

extension HTTPResponse: AutoEquatableTRN, AutoHashableTRN { }
