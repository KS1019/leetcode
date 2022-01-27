class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var arr = [Int]()
        g:for i in 0..<nums.count {
            for k in i+1..<nums.count {
                if nums[k] == target - nums[i] {
                    arr = [i,k]
                    break g
                }
            }
        }
        return arr
    }
}
