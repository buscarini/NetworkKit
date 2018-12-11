//
//  HTTPMethod.swift
//  Project
//
//  Created by Vicente Crespo on 10/8/17.
//
//

import Foundation

public enum HTTPMethod: String {
    case get
    case post
    case put
    case delete
	case patch
}

extension HTTPMethod: AutoCases, AutoEquatableTRN, AutoHashableTRN { }
