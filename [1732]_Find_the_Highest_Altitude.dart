/*
* 문제
고도 변화 기록을 나타내는 정수 리스트 gain이 주어집니다.
gain[i]는 i번째 구간에서 얻은 고도 변화를 의미합니다.
자전거 타는 사람이 처음 고도 0에서 시작한다고 할 때, 가장 높은 고도를 구하세요.
- 처음 고도는 0입니다.
- 각 구간의 고도 변화에 따라 누적 고도를 계산합니다.
- 누적된 고도 중 가장 높은 고도를 반환합니다.

* 조건
1. 1≤gain.length≤100
2. −100≤gain[i]≤100

* 예시
1. 입력: gain = [-5,1,5,0,-7] 출력: 1
	설명: 누적 고도 변화는 [0, -5, -4, 1, 1, -6]가 되며, 가장 높은 고도는 1입니다.

2. 입력: gain = [-4,-3,-2,-1,4,3,2] 출력: 0
	설명: 누적 고도 변화는 [0, -4, -7, -9, -10, -6, -3, 0]가 되며, 가장 높은 고도는 0입니다.
*/
class Solution {
  int largestAltitude(List<int> gain) {
    // 0 + gain[0] = 두 번째
    // 두 번쨰 + gain[1] = 세 번째
    int maxGain = 0;
    List<int> gapList = [0];

    for (int i = 0; i < gain.length; i++) {
      int gap = gapList[i] + gain[i];
      gapList.add(gap);

      if (gap > maxGain) {
        maxGain = gap;
      }
    }
    print('gapList: $gapList');
    return maxGain;
  }
}
