/// done it using bit wise operation
class Solution {
  int hammingWeight(int n) {
    int count = 0;
    while (n != 0) {
      if ((n & 1) != 0) {
        count++;
      }
      n = n >> 1;
    }
    return count;
  }
}

