//
//  ParametersEncoding.swift
//  Project
//
//  Created by Vicente Crespo on 10/8/17.
//
//

import Foundation

public enum ParametersEncoding: String {
    case url
    case json
}

extension ParametersEncoding: AutoCases {}
//, AutoEquatableTRN, AutoHashableTRN { }

