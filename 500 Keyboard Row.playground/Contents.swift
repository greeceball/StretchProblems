import UIKit

/*
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 Notes:
 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
 */
class Solution {
    func findWords(_ words: [String]) -> [String] {
        let topRow = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]
        let middleRow = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]
        let bottomRow = ["z", "x", "c", "v", "b", "n", "m"]
        
        var topRowCount = 0
        var middleRowCount = 0
        var bottomRowCount = 0
        
        var oneRowWords: [String] = []
        
        for word in words {

            for char in word {

                if topRow.contains(char.description) {
                    topRowCount += 1
                }
                
                if middleRow.contains(char.description) {
                    middleRowCount += 1
                }
                
                if bottomRow.contains(char.description) {
                    bottomRowCount += 1
                }
            }
            
            if topRowCount > 0 && middleRowCount == 0 && bottomRowCount == 0 {
                oneRowWords.append(word)
            }
            
            if middleRowCount > 0 && topRowCount == 0 && bottomRowCount == 0 {
                oneRowWords.append(word)
            }
            
            if bottomRowCount > 0 && topRowCount == 0 && middleRowCount == 0 {
                oneRowWords.append(word)
            }
            
            topRowCount = 0
            middleRowCount = 0
            bottomRowCount = 0
        }
        return oneRowWords
    }
}

let s = Solution()
print(s.findWords(["Hello", "Alaska", "Dad", "Peace"]))
