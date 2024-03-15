//
//  BaseballGame.swift
//  NumberBaseballGame
//
//  Created by A Hyeon on 3/13/24.
//

import Foundation

class BaseballGame{
    func start() {
        let answer = makeAnswer() // 정답을 만드는 함수
        print("<게임을 시작합니다>")
        
        while true {
            // 1. 유저에게 입력값을 받음
            print("숫자를 입력하세요")
            let playerAnswer = readLine()!
            
            guard let n = Int(playerAnswer) else { 
                // 2. 정수로 변환되지 않는 경우 반복문 처음으로 돌아가기
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            if (n < 100 || n > 999){
                //3. 세자리가 아니거나
                print("올바르지 않은 입력값입니다")
                continue
            }
            if (playerAnswer.contains("0")){
                // , 0을 가지거나  반복문 처음으로 돌아가기
                print("올바르지 않은 입력값입니다")
                continue
            }
            if (Set(playerAnswer).count < 3){
                //  특정 숫자가 두 번 이상 사용된 경우
                print("올바르지 않은 입력값입니다")
                continue
            }
            if (answer == n) {
                // 만약 정답이라면 break 호출하여 반복문 탈출
                print("정답입니다!")
                break
            }
            let answerIntToArray = String(answer).compactMap({$0.wholeNumberValue})
            
            let playerAnswerIntToArray = String(playerAnswer).compactMap({$0.wholeNumberValue})
            var strike = 0
            var ball = 0
            
            for i in 0...2{
                if playerAnswerIntToArray.contains(answerIntToArray[i]) {
                    if playerAnswerIntToArray[i] == answerIntToArray[i]{
                        strike += 1
                    }else {
                        ball += 1
                    }
                }
            }
            if (strike == 0 && ball == 0){
                print("Nothing\n")
                continue
            }
            print("\(strike)스트라이크 \(ball)볼")
                        // 4. 정답과 유저의 입력값을 비교하여 스트라이크/볼을 출력하기
        }
    }
    
    func makeAnswer() -> Int {
        var nineNumArray = [1,2,3,4,5,6,7,8,9]
        nineNumArray.shuffle()
        
        let hundred = nineNumArray[0] * 100
        let ten = nineNumArray[1] * 10
        let one = nineNumArray[2]
        
        return hundred + ten + one
        
    }
    
    
}
