/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
    var map = new Map();
    for (let index = 0; index < nums.length; index++) {
        if (map.has(target - nums[index])) {
            return [index, map.get(target - nums[index])];
        }
        map.set(nums[index], index);
    }
    return [];
};