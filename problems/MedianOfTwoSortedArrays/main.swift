class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let new = (nums1 + nums2).sorted()
        return new.count % 2 != 0 
            ? Double(new[Int(new.count / 2)])
            : (Double(new[Int(new.count / 2 - 1)] + new[Int(new.count / 2)]) / Double(2))
    }
}