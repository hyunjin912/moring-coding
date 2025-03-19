/*
* 문제
정수 배열 nums가 주어졌을 때, 배열의 모든 요소의 곱에 대한 부호를 반환하는 함수를 작성하세요.
곱의 부호는 양수일 경우 1, 음수일 경우 -1, 그리고 곱이 0일 경우 0을 반환합니다.

* 예시
1. 입력: nums = [-1, -2, -3, -4, 3, 2, 1] 출력: 1
	설명: 곱의 값은 음수가 짝수 개이므로 양수입니다.

2. 입력: nums = [1, 5, 0, 2, -3] 출력: 0
	설명: 곱의 값에 0이 포함되어 있으므로 결과는 0입니다.

3. 입력: nums = [-1, 2, -3, 4] 출력: 1
	설명: 곱의 값은 음수가 짝수 개이므로 양수입니다.
*/

class Solution {
  int arraySign(List<int> nums) {
    int minusAmount = 0;

    for (var value in nums) {
      if (value == 0) return 0;

      if (value < 0) {
        minusAmount++;
      }
    }

    return minusAmount.isEven ? 1 : -1;
  }
}
