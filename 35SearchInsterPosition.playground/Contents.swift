import UIKit



class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
       let numsArray = nums
        let arrayCount = nums.count
        var previousNum: Int
        var previousIndex: Int
        
        for index in 0...arrayCount {
            if numsArray[index] == target {
                return Int(index)
            } else if numsArray[index] != target && numsArray[index] < target {
                previousNum = numsArray[index]
                previousIndex = index
            } else if numsArray[index] != target && numsArray[index] > target {
                return index
            }
        }
        return nums.count
    }
}

let s = Solution()

s.searchInsert([1,3,4,6,7], 8)
//
//class Solution {
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//       let numsArray = nums
//        let arrayCount = nums.count
//        var previousNum: Int
//        var previousIndex: Int
//
//        for _ in nums {
//            if let exactIndex = nums.firstIndex(of: target) {
//                return exactIndex
//            }
//
//            if let insertIndex = nums.firstIndex(where: {$0 > target}) {
//                return insertIndex
//            }
//        }
//        return nums.count
//    }
//
//}
