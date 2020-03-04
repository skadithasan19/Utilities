//
//  File.swift
//  
//
//  Created by Hasan, MdAdit on 3/4/20.
//

import Foundation
   
public extension String {
    var boolValue: Bool {
        return NSString(string: self).boolValue
    }
}


public extension Bool {
    var intValue: Int {
        return self ? 1 : 0
    }
}

public extension String {
    
    var removingWhitespaceAndNewLines: String {
        return removing(.whitespacesAndNewlines)
    }
    
    func removing(_ forbiddenCharacters: CharacterSet) -> String {
        return String(unicodeScalars.filter({ !forbiddenCharacters.contains($0) }))
    }
    
    func convertToDictionary() -> [String: Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}


public extension String {
    var isPhoneNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count
            } else {
                return false
            }
        } catch {
            return false
        }
    }
}
