/*
* 문제
로봇이 (0, 0) 위치에서 시작하여 주어진 문자열 moves에 따라 움직입니다.
문자열의 각 문자는 로봇의 이동 방향을 나타냅니다:

'U': 위쪽으로 이동 (y축 +1)
'D': 아래쪽으로 이동 (y축 -1)
'L': 왼쪽으로 이동 (x축 -1)
'R': 오른쪽으로 이동 (x축 +1)
로봇이 시작 위치로 돌아오는지 확인하는 함수를 작성하세요.
시작 위치로 돌아온다면 true를, 아니면 false를 반환합니다.

* 예시
1. 입력: moves = "UD" 출력: true
	설명: 위로 한 번, 아래로 한 번 이동하여 원래 위치로 돌아옵니다.

2. 입력: moves = "LL" 출력: false
	설명: 왼쪽으로 두 번 이동하였으므로 원래 위치로 돌아오지 않습니다.

3. 입력: moves = "RRDDLUU" 출력: false
*/
class Solution {
  bool judgeCircle(String moves) {
    int x = 0;
    int y = 0;

    for (int i = 0; i < moves.length; i++) {
      switch (moves[i]) {
        case 'U':
          y += 1;
          break;
        case 'D':
          y -= 1;
          break;
        case 'R':
          x += 1;
          break;
        case 'L':
          x -= 1;
          break;
        default:
      }
    }

    return x == 0 && y == 0 ? true : false;
  }
}
