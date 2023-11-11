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
  String defangIPaddr(String address) {
    return address.replaceAll('.', '[.]');
  }
}
