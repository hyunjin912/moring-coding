/*
* 문제
정수, "C", "D", "+"로 구성된 문자열 리스트 ops가 주어집니다.
이는 야구 경기 점수의 기록을 나타내며, 각 문자열 요소는 다음과 같은 규칙에 따라 점수를 계산합니다.

정수 (x): 이 점수를 얻고 기록합니다.
"C": 직전의 점수를 취소하고 해당 점수를 기록에서 제거합니다.
"D": 직전 점수를 두 배로 하여 새로운 점수로 기록합니다.
"+": 직전 두 점수의 합을 새로운 점수로 기록합니다.
모든 점수를 기록한 후, 총 점수를 반환하는 함수를 작성하세요.

* 예시
1. 입력: ops = ["5","2","C","D","+"] 출력: 30
	설명:
	"5": 5점 기록 → [5]
	"2": 2점 기록 → [5, 2]
	"C": 직전 점수 2 취소 → [5]
	"D": 5를 두 배하여 10점 기록 → [5, 10]
	"+": 5와 10을 합하여 15점 기록 → [5, 10, 15]
	총점: 5 + 10 + 15 = 30

2. 입력: ops = ["5","-2","4","C","D","9","+","+"] 출력: 27
*/

class Solution {
  int calPoints(List<String> operations) {
    List<int> pointBoard = [];

    for (int i = 0; i < operations.length; i++) {
      switch (operations[i]) {
        case "C":
          if (pointBoard.isNotEmpty) {
            pointBoard.remove(pointBoard.last);
            // 메서드에 removeLast()가 있음
          }
          break;
        case "D":
          if (pointBoard.isNotEmpty) {
            pointBoard.add(pointBoard.last * 2);
          }
          break;
        case "+":
          if (pointBoard.length > 1) {
            var lastNum = pointBoard.last;
            var previousNum = pointBoard[pointBoard.length - 2];

            pointBoard.add(lastNum + previousNum);
          }
          break;
        default:
          pointBoard.add(int.parse(operations[i]));
      }
    }

    return pointBoard.fold(0, (previous, current) => previous + current);
  }
}
