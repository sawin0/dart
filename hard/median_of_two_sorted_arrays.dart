// Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

// The overall run time complexity should be O(log (m+n)).


// Example 1:

// Input: nums1 = [1,3], nums2 = [2]
// Output: 2.00000
// Explanation: merged array = [1,2,3] and median is 2.

// Example 2:

// Input: nums1 = [1,2], nums2 = [3,4]
// Output: 2.50000
// Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
// source: https://leetcode.com/problems/median-of-two-sorted-arrays/

void main(){
  Solution solution = Solution();
  print(solution.findMedianSortedArrays([1,3], [2]));
  print(solution.findMedianSortedArrays([1,2], [3,4]));
}


class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> merged = [...nums1, ...nums2];
    merged.sort();

    int n = merged.length;

    if (n % 2 == 0) {
      int mid1 = n ~/ 2;
      int mid2 = mid1 - 1;
      return (merged[mid1] + merged[mid2]) / 2.0;
    } else {
      int mid = n ~/ 2;
      return merged[mid].toDouble();
    }
  }
}
