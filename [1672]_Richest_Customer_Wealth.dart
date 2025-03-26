/*
* 문제
은행에 여러 고객이 있고, 각 고객은 여러 개의 계좌를 가지고 있습니다. 각 계좌에는 일정 금액이 예치되어 있습니다.
accounts는 2D 리스트로, accounts[i][j]는 i번째 고객의 j번째 계좌에 있는 돈을 나타냅니다.
가장 많은 돈을 가진 고객의 총 자산을 구하세요.

각 고객의 모든 계좌의 금액을 합산하여 자산을 계산합니다.
모든 고객의 자산 중 가장 높은 금액을 반환합니다.

* 조건
1. m == accounts.length (고객 수)
2. n == accounts[i].length (각 고객이 가진 계좌 수)
3. 1≤m,n≤50
4. 0≤accounts[i][j]≤100

* 예시
1. 입력: accounts = [[1,2,3],[3,2,1]] 출력: 6
	설명: 첫 번째 고객의 자산은 1+2+3=6, 두 번째 고객의 자산도 3+2+1=6입니다. 
	최대 자산은 6입니다.

2. 입력: accounts = [[1,5],[7,3],[3,5]] 출력: 10
	설명: 각 고객의 자산은 각각 6, 10, 8이므로, 최대 자산은 10입니다.

3. 입력: accounts = [[2,8,7],[7,1,3],[1,9,5]] 출력: 17
	설명: 각 고객의 자산은 각각 17, 11, 15이므로, 최대 자산은 17입니다.
*/

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxNum = 0;

    for (var i = 0; i < accounts.length; i++) {
      int prevSum = 0;

      for (var j = 0; j < accounts[i].length; j++) {
        prevSum += accounts[i][j];
      }

      if (prevSum > maxNum) {
        maxNum = prevSum;
      }
    }

    return maxNum;
  }
}
