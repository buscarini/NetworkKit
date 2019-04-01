//
//  Request+Constants.swift
//  NetworkKit
//
//  Created by José Manuel Sánchez Peñarroja on 18/12/2018.
//

import Foundation

public extension Request {
	enum HeaderKey {
		public static var contentType: String { return "Content-Type" }
		public static var acceptLanguage: String { return "Accept-Language" }
	}
	
	enum Header {
		public static var formUrlEncoded: String { return "application/x-www-form-urlencoded" }
	}
}
