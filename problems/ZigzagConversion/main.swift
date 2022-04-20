class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 && s.length > 1 else { return s }
        
        var firstCalc: Bool
        var res = ""
        var reminder: Int = -1
        
        for i in 0 ..< numRows {
            var j = i
            firstCalc = true
            
            while (j < s.length) {
                if reminder != j {
                    res += String(s[s.index(s.startIndex, offsetBy: j)])
                }
                reminder = j
                
                if firstCalc {
                    j += (numRows - (i + 1)) * 2
                } else {
                    j += i * 2
                }
                
                firstCalc = !firstCalc
            }
        }
        return res
    }
}
