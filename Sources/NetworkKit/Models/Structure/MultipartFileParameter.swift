//
//  MultipartFileParameter.swift
//  Project
//
//  Created by Vicente Crespo on 10/8/17.
//
//

import Foundation

public struct MultipartFileParameter {
    public var mimeType: String
    public var fileName: String?

    public init(mimeType: String, fileName: String?) {
        self.mimeType = mimeType
        self.fileName = fileName
    }
}

extension MultipartFileParameter: AutoEquatableTRN, AutoHashableTRN { }
