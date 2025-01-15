// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

// Find two lines that together with the x-axis form a container, such that the container contains the most water.

// Return the maximum amount of water a container can store.

// Notice that you may not slant the container.

// Example 1:

// Input: height = [1,8,6,2,5,4,8,3,7]
// Output: 49
// Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

// Example 2:

// Input: height = [1,1]
// Output: 1

// source: https://leetcode.com/problems/container-with-most-water/

import 'dart:math';

void main() {
  Solution solution = Solution();
  print(solution.maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7])); // 49
  print(solution.maxArea([1, 1])); // 1
  print(solution.maxArea([4, 3, 2, 1, 4])); // 16
}

// Algorithm Used: Two-Pointer Technique
class Solution {
  int maxArea(List<int> height) {
    // Initialize two pointers
    int left = 0; // Pointer at the beginning of the array
    int right = height.length - 1; // Pointer at the end of the array
    int maxArea = 0; // Variable to store the maximum area found so far

    // Loop until the two pointers meet
    while (left < right) {
      // Calculate the current area
      // Area = width * minimum of the two heights
      int area = (right - left) * min(height[left], height[right]);

      // Update maxArea if the current area is greater
      maxArea = max(maxArea, area);

      // Move the pointer pointing to the smaller height
      // This is because the height of the container is limited by the smaller line
      if (height[left] < height[right]) {
        left++; // Move the left pointer to the right
      } else {
        right--; // Move the right pointer to the left
      }
    }

    // Return the maximum area found
    return maxArea;
  }
}
