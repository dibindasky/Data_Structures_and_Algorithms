/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function (s, t) {
    if (s.length != t.length) return false;
    var sMap = new Map(), tMap = new Map();
    for (let i = 0; i < s.length; i++) {
        sMap.set(s[i], (sMap.get(s[i]) || 0) + 1);
        tMap.set(t[i], (tMap.get(t[i]) || 0) + 1);
    }
    for (const [key, value] of tMap.entries()) {
        if (value != sMap.get(key)) return false;
    }
    return true;
};