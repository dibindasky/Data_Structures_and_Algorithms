
class Solution {
    /**
     * @param {string} s
     * @param {string} t
     * @return {boolean}
     */
    isAnagram(s, t) {
        if (s.length !== t.length) return false;
        var sObj = {}, tObj = {};

        for (var i in s) {
            console.log('first -> ${s[i]}');
            console.log(i);
            if (!sObj[s[i]]) {
                sObj[s[i]] = 1;
            } else {
                sObj[s[i]] = sObj[s[i]] + 1;
            }
            if (!tObj[t[i]]) {
                tObj[t[i]] = 1;
            } else {
                tObj[t[i]] = tObj[t[i]] + 1;
            }
        }
        console.log(sObj);
        console.log(tObj);
        return sObj === tObj;
    }
}

var s = new Solution();
console.log(s.isAnagram("racecar", "carrace"))
