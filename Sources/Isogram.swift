//Solution goes in Sources
import Foundation

struct Isogram {
    static func isIsogram(_ input: String)-> Bool {
        let a = input.replacingOccurrences(of: "-", with: "")
        let b = a.replacingOccurrences(of: " ", with: "")
        var changeString = b.lowercased()
        for i in changeString.characters {
            changeString = String(changeString.characters.dropFirst())
            if changeString.range(of: String (i)) != nil && input != "" {
                return false
            }
        }
        return true
    }
}
