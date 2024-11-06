/**
 * @param {string} s
 * @return {boolean}
 */
var isPalindrome = function (s) {
    var i = 0, j = s.length - 1;
    s = s.toLocaleLowerCase();
    while (i < j) {
        if (!isAlfaNumeric(s[i])) {
            i++;
        }
        if (!isAlfaNumeric(s[j])) {
            j--;
        }
        if (isAlfaNumeric(s[i]) && isAlfaNumeric(s[j])) {
            if (s[i] === s[j]) {
                i++;
                j--;
            } else {
                return false;
            }
        }
    }
    return true;
};

function isAlfaNumeric(character) {
    if (character.length !== 1) return false;
    const code = character.charCodeAt(0);
    return ((code >= 97 && code <= 122) || (code >= 48 && code <= 57));
}

console.log(isPalindrome('0P'))
