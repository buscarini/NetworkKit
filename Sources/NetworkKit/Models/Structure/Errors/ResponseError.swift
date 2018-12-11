//
//  ResponseError.swift
//  Pods-TRNNetworkKit_Example
//
//  Created by José Manuel Sánchez Peñarroja on 16/1/18.
//

import Foundation

public enum ResponseError: Error {
	case serialization(Error)
	case network(Error)
}
