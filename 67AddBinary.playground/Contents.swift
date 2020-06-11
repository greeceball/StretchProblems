import UIKit

/*
 Given two binary strings, return their sum (also a binary string).
 
 The input strings are both non-empty and contains only characters 1 or 0.
 
 
 guard let aInt = Int(a, radix: 2),
 let bInt = Int(b, radix: 2) else { return "0" }
 
 return String(aInt + bInt, radix: 2)
 
 */

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let a = a.map{Int(String($0))!}
        let b = b.map{Int(String($0))!}
        
        var countA = a.count - 1
        var countB = b.count - 1
        var carry = 0
        var result: String = ""
        
        while countA >= 0 || countB >= 0 {
            
            let aNum = countA >= 0 ? a[countA] : 0
            let bNum = countB >= 0 ? b[countB] : 0
            let sum = aNum + bNum + carry
            result += "\(sum % 2)"
            carry = sum/2
            
            countA -= 1
            countB -= 1
            
        }
        
        if carry != 0 {
            result += "1"
        }
        return result
    }
    
    func addBin(_ a: String, _ b: String) -> String {
        let a = a.map{String($0)}
        let b = b.map{String($0)}
        
        var aCount = a.count - 1
        var bCount = b.count - 1
        var carry = 0
        var result: String = ""
        while aCount >= 0 || bCount >= 0 {
            guard let aInt = aCount >= 0 ? Int(a[aCount], radix: 2) : 0,
                let bInt = bCount >= 0 ? Int(b[bCount], radix: 2) : 0 else {return "0"}
            let sum = aInt + bInt + carry
            result = "\(sum % 2)" + result
            carry = sum/2
            aCount -= 1
            bCount -= 1
            
        }
        if carry != 0 {
            result = "1" + result
        }
        return result
    }
}


let s = Solution()
s.addBin("1", "11")
