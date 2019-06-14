//
//  InfoPlistParser.swift
//  InfoPlistParser
//
//  Created by Alex Nagy on 14/06/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import Foundation

struct InfoPlistParser {
    static func getStringValue(forKey key:String) -> String {
        guard let value = Bundle.main.infoDictionary?[key] as? String else {
            fatalError("Could not find value for key \(key) in the Info.plist")
        }
        return value
    }
}
