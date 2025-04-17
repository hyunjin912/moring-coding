/*
* 문제
0에서 정수 n까지의 모든 정수에 대해 2진수로 나타냈을 때
1의 개수를 세는 배열을 반환하세요.

* 조건
0 <= n <= 10^5

* 예시
예제 1:
	입력: n = 2
	출력: [0, 1, 1]
	설명: 0의 비트는 0개, 1의 비트는 1개, 2의 비트는 1개입니다.

예제 2:
	입력: n = 5
	출력: [0,1,1,2,1,2]
	설명: 0의 비트는 0개, 1의 비트는 1개, 2의 비트는 1개, 3의 비트는 2개, 4의 비트는 1개 5의 비트는 2개입니다.
*/

class Solution {
  List<int> countBits(int n) {
    List<int> ones = [];
    // 중첩말고..... 방법 없나...
    for (int i = 0; i <= n; i++) {
      var list = i.toRadixString(2).split('');
      var count = 0;
      list.forEach((value) {
        if (value == '1') count++;
      });
      ones.add(count);
    }

    return ones;
  }
}
