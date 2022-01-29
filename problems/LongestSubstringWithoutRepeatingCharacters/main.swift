class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var characterDict = [Character:Int]()
        var maxLength = 0
        var lastRepeatPos = -1
        var i = 0
        
        for c in s {
            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
                lastRepeatPos = characterDict[c]!
            }
            
            maxLength = max(i - lastRepeatPos, maxLength)
            characterDict[c] = i
            i += 1
        }
        
        return maxLength
    }
}
