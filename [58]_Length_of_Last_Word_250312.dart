/*
*문제
문자열 s가 주어질 때, 마지막 단어의 길이를 구하는 함수를 작성하세요.
여기서 "단어"는 공백이 아닌 문자들로 이루어진 연속된 문자열로 정의합니다.

단서
문자열 s는 공백으로 시작하거나 끝날 수 있으며,
단어와 단어 사이에는 하나 이상의 공백이 있을 수 있습니다.

* 예시
1. 입력: s = "Hello World" 출력: 5

2. 입력: s = " fly me to the moon " 출력: 4

3. 입력: s = "luffy is still joyboy" 출력: 6
*/

class Solution {
  int lengthOfLastWord(String s) {
    // 문자열을 배열로 바꾼다 => 공백 기준으로
    var sList = s.split(' ');
    var newList = [];
    print(sList);

    // 공백인 값을 제외한 것들을 새로운 변수에 할당한다
    sList.forEach((item) {
      print('item - $item, length - ${item.length}');

      if (item.length > 0) {
        newList.add(item);
      }
    });

    print('newList - $newList');

    // 숫자형으로 반환한다
    return newList.last.length;
  }
}
