import Foundation
//Write a function to find the longest common prefix string amongst an array of strings.
//All given inputs are in lowercase letters a-z.

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstStr = strs.first else { return "" }
        return strs.dropFirst().reduce(firstStr) { $0.commonPrefix(with: $1) }
    }
}

let s = Solution()
s.longestCommonPrefix(["flower","flow","flight"])
