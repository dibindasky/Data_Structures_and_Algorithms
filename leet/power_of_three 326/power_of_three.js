/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfThree = function (n) {
    if (n == 1) return true;
    if (n < 3 || n % 3 != 0) return false;
    return isPowerOfThree(n / 3);
};