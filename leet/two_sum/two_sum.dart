class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};
    for (var i = 0; i < nums.length; i++) {
      if (map.containsKey(target - nums[i])) {
        return [i, map[target - nums[i]]!];
      }
      map[nums[i]] = i;
    }
    return [];
  }
}
