//
//  Result.swift
//  Pods-TRNNetworkKit_Example
//
//  Created by José Manuel Sánchez Peñarroja on 15/1/18.
//

import Foundation

public enum Result<T, E: Error> {
	case success(T)
	case failure(E)
}

public extension Result {
	func map<U>(_ f: (T) -> U) -> Result<U, E> {
		switch self {
			case .success(let t):
				return .success(f(t))
			case .failure(let e):
				return .failure(e)
		}
	}
	
	func mapError<F: Error>(_ f: (E) -> F) -> Result<T, F> {
		switch self {
			case .success(let t):
				return .success(t)
			case .failure(let e):
				return .failure(f(e))
		}
	}
}
