/*
*문제
두 개의 문자열 s와 t가 주어집니다.
문자열 t는 문자열 s에 임의로 추가된 하나의 문자를 포함하고 있습니다.
이 추가된 문자를 찾아서 반환하세요.

* 조건
1. s와 t는 모두 소문자 알파벳으로만 이루어져 있습니다.
2. t는 s보다 한 글자가 더 긴 문자열입니다.

* 예시
1. 입력: s = "abcd", t = "abcde" 출력: "e"
	설명: t에서 추가된 문자 'e'를 찾아 반환합니다.

2. 입력: s = "", t = "y" 출력: "y"
	설명: s가 비어있고, t에는 하나의 문자만 있으므로 그 문자가 답입니다.

3. 입력: s = "aabbcc", t = "aabbcce" 출력: "e"
*/

class Solution {
  String findTheDifference(String s, String t) {
    // 문자열을 배열로 만들기
    List<String> sList = s.split('');
    List<String> tList = t.split('');

    // 같은 것을 포함할 때 동일한 값을 삭제하기
    for (var i = 0; i < sList.length; i++) {
      if (tList.contains(sList[i])) {
        tList.remove(sList[i]);
      }
    }

    // 남아있는 값을 문자열로 변경하기
    return tList.join();
  }
}
