//
//  NetworkResponse.swift
//  Pods-TRNNetworkKit_Example
//
//  Created by José Manuel Sánchez Peñarroja on 16/1/18.
//

import Foundation

public enum NetworkResponse<T> {
	case success(T, HTTPResponse)
	case networkError(ResponseError, HTTPResponse)
	case encodingError(Error)
}
