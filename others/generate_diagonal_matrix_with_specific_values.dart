// Write a function to output to loop through rows
// and columns to give this output.
// This should be achievable using just [''XXX', "Y"] as the input
// *
// array [
// 1 => [ 0 => 'XXX', 1 => 'Y', 2 => 'Y', 3 => 'Y' ],
// 2 => [ 0 => 'Y', 1 => 'XXX' , 2 => 'Y', 3 => 'Y' ],
// 3 => [0 => 'Y', 1 => 'Y', 2 => 'XXX', 3 => 'Y'],
// 4 => [ 0 => 'Y', 1 => 'Y', 2 => 'Y' , 3 => 'XXX' ]
// ]

void main() {
  print(generateDiagonalMatrixWithSpecificValues(['XXX', 'Y'], 4));
}

List<List<String>> generateDiagonalMatrixWithSpecificValues(
    List<String> values, int size) {
  List<List<String>> result = [];
  for (int i = 0; i < size; i++) {
    List<String> row = [];
    for (int j = 0; j < size; j++) {
      if (i == j) {
        row.add(values[0]);
      } else {
        row.add(values[1]);
      }
    }
    result.add(row);
  }
  return result;
}
