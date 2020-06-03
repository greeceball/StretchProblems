import UIKit

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        if needle.isEmpty {
            return 0
        }
        
        if haystack.count == needle.count {
            if haystack == needle {
                return 0
            }else {
                return -1
            }
        }
        
            if let indexOf = haystack.range(of: needle) {
                let startingIndex = indexOf.lowerBound
                let distance = haystack.distance(from: haystack.startIndex, to: startingIndex)
                return distance
        }
        return -1
    }
}
