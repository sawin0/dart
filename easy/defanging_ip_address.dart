// Given a valid (IPv4) IP address, return a defanged version of that IP address.

// A defanged IP address replaces every period "." with "[.]".

// Example 1:

// Input: address = "1.1.1.1"
// Output: "1[.]1[.]1[.]1"

// Example 2:

// Input: address = "255.100.50.0"
// Output: "255[.]100[.]50[.]0"
//
//source: https://leetcode.com/problems/defanging-an-ip-address/

void main() {
  Solution solution = Solution();
  print(solution.defangIPaddr('1.1.1.1'));
    print(solution.defangIPaddr('255.100.50.0'));

}

class Solution {
  // This method converts a valid IPv4 address into a "defanged" version.
  // In the defanged version, every period (.) is replaced with "[.]".
  // Parameters:
  // - `address`: A string representing a valid IPv4 address.
  // Returns:
  // - A string where all periods in the IPv4 address are replaced with "[.]".
  String defangIPaddr(String address) {
    // Use the `replaceAll` method to replace all occurrences of the '.' character
    // with the string "[.]". This creates the defanged version of the IP address.
    return address.replaceAll('.', '[.]');
  }
}

