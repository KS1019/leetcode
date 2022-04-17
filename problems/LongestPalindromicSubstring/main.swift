// https://www.youtube.com/watch?v=XYQecbcd6_c

class Solution {
    func longestPalindrome(_ s: String) -> String {
        let s = Array(s)
        var res = ""
        var resLen = 0
        
        for i in 0 ..< s.count {
            var l = i
            var r = i
            while 0 <= l && r < s.count && s[l] == s[r] {
                if r - l + 1 > resLen {
                    res = String(s[l ... r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }

            l = i
            r = i+1
            while 0 <= l && r < s.count && s[l] == s[r] {
                if r - l + 1 > resLen {
                    res = String(s[l ... r])
                    resLen = r - l + 1
                }
                l -= 1
                r += 1
            }
        }
        return res
    }
}