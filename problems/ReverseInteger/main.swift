class Solution {
    func reverse(_ x: Int) -> Int {
        var int: Int
        if x >= 0 {
            let s = String(x).reversed()
            int = Int(String(s))! 
        } else {
            let i = -1 * x
            int = -1 * reverse(Int(i))
        }
        
        guard let y = Int32(exactly: int) else { return 0 }
        return Int(y)
    }
}
