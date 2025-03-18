/*
* 문제
정수 배열 nums가 주어졌을 때, 이 배열이 단조인지 확인하는 함수를 작성하세요.
배열이 단조 증가 또는 단조 감소하는 경우 단조라고 정의합니다.

단조 증가: 각 요소가 이전 요소보다 크거나 같은 경우
단조 감소: 각 요소가 이전 요소보다 작거나 같은 경우

* 예시
1. 입력: nums = [1, 2, 2, 3] 출력: true
	설명: 모든 요소가 크거나 같으므로 단조 증가입니다.

2. 입력: nums = [6, 5, 4, 4] 출력: true
	설명: 모든 요소가 작거나 같으므로 단조 감소입니다.

3. 입력: nums = [1, 3, 2] 출력: false
	설명: 요소들이 증가했다가 감소하므로 단조가 아닙니다.
*/

class Solution {
  bool isMonotonic(List<int> nums) {
    // 현재 요소와 다음 요소를 비교
    //현재 - 다음
    //1 - 2 => 음수 => 증가
    //2 - 2 => 0 => 처음이 증가였으므로 무시? 대기?
    //2 - 3 => 음수 => 증가

    String txt = '';

    for (var i = 0; i < nums.length; i++) {
      if (i == (nums.length - 1)) break;

      if (nums[i] - nums[i + 1] == 0) continue;

      if (nums[i] - nums[i + 1] < 0) {
        String str = 'increase';
        if (txt != '' && txt != str) return false;
        txt = str;
      } else {
        String str = 'decrease';
        if (txt != '' && txt != str) return false;
        txt = str;
      }
    }

    return true;
  }
}
