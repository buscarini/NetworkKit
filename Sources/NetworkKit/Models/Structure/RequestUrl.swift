//
//  RequestUrl.swift
//  Project
//
//  Created by Vicente Crespo on 10/8/17.
//
//

import Foundation

public enum RequestUrl {
    case endpoint(String)
    case full(URL)
}

extension RequestUrl: AutoCases, AutoEquatableTRN, AutoHashableTRN { }
