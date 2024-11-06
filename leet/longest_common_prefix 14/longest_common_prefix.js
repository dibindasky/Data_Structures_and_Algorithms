/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function (strs) {
    var longString = '';
    var flag = 0;
    for (var i = 0; i < strs[0].length; i++) {
        var subString = strs[0].substring(0, i + 1);
        for (var j = 1; j < strs.length; j++) {
            if ((strs[j] == '') || (strs[j].length < subString.length)) {
                flag = 1;
                break;
            }
            if (subString !== strs[j].substring(0, i + 1)) {
                flag = 1;
                break;
            }
        }
        if (flag === 1) break;
        longString = longString.length < subString.length ? subString : longString;
    }
    return longString;
};

console.log('ans -- > ' + longestCommonPrefix(["flower","flow","flight"]));