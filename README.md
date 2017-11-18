# exercise_processing  

---
### Capture
video를 활용하여 웹캠에서 들어오는 영상을 실시간으로 변환하는 예제  
- rotateVideo.pde - 마우스 좌표에 따라 영상에 색을 입히고 일정한 속도로 회전시키는 예제   
- searchTheMan.pde - 마우스 포인터를 중심으로 특정거리 만큼만 보이게 하는 예제  
- stringForCapture.pde - 문자열을 이용해 캡쳐이미지를 색깔이 들어간 실시간으로 문자열로 바꿔주는 예제  
- stringForCapture2.pde - 문자열을 이용해 캡쳐이미지를 글씨 크기가 변하는 실시간으로 문자열로 바꿔주는 예제  

---
### Make
프로세싱으로 만든 간단한 프로젝트  
- ballGame.pde - 빨간색 볼을 키보드로 조작하여 흘러가는 선을 먹으면 점수가 올라가는 게임  
- pattern.pde - 사선이나 네모 박스가 패턴을 이루며 그려지는 예제  
- rainDrop - 빗방울 잡기 게임  

---
### Movie  
video를 활용하여 이미 만들어져 있는 영상을 불러와 변환하는 예제  
- movie.pde - 기본 예제로 동영상을 불러오는 방법을 보여줌  
- duration.pde - 마우스의 X좌표에 따라 동영상의 재생위치를 이동하는 예제  

**Video라이브러리를 사용할 때 아래와 같은 오류가 발생하는 경우에는 문서 폴더에 있는 프로세싱 라이브러리를 프로세싱 실행파일이 있는 C:\Program Files\processing-3.3.5\modes\java\libraries로 옮긴 다음 프로세싱을 재시동하면 잘 동작한다.**  

A library used by this sketch is not installed properly.  
A library relies on native code that's not available.  
Or only works properly when the sketch is run as a 32-bit  application.  

---
### PDF
프로세싱의 화면을 pdf로 인쇄하는 예제  
- pdf.pde - 프로세싱의 구동화면 없이 결과물을 pdf로 인쇄  
- beginRecord.pde - 프로세싱의 구동화면을 화면에 뿌린 다음 pdf로 인쇄  


--- 
### PFont
PFont를 활용하여 글씨 넣기  
- alignWidthForMessage.pde - 문자열의 각 문자의 간격을 일정하게 맞춰주는 예제  
- alignWidthForMessage2.pde - 문자열의 각 문자의 간격을 일정하게 맞춰주기 위해 textWidth 함수를 사용하며 글씨 크기를 주기별로 바꾸는 예제  
- drawRectOnArc.pde - 원 위에 있는 호에 일정한 각도로 회전한 사각형 그리기  
- extrudeNuberAndSumArray.pde - 배열안에서 콤마와 스페이스로 구분되어 들어있는 숫자를 추출하여 모두 더하는 예제  
- inputTyping.pde - 키보드로 입력받는 값을 엔터키를 기준으로 변수에 저장하고, 화면에 보여주는 예제  
- inputTyping2.pde - 키보드로 입력받는 값을 다시 질문에 활용하는 챗봇 예제  
- inputTypingSizeUp.pde - 키보드로 입력받는 값을 엔터키를 기준으로 변수에 저장하고, 화면에 보여주는 예제의 수정 버전    
- locationViewer.pde - 마우스를 따라다니는 좌표 태그 만들기  
- shakeMessageByMouseClick.pde - 마우스를 클릭하면 구문의 글씨 하나하나가 공중에 떠다니는 예제  
- spinningMessage.pde - 메세지를 회전시키는 예제  
- splitAndJoinString.pde - 문자열을 분리하거나 연결하는 예제  
- starwarsText.pde - 스타워즈 스타일 텍스트 표현  
- textAlongACurve.pde - 원의 호에 맞춰 글씨를 넣는 예제  
- textMessage.pde - 텍스트를 화면의 오른쪽에서 왼쪽으로 흘러가게 하는 예제  

--- 
### PImage
PImage를 활용하여 사진파일 애니메이션 만들기  
 - adjustBright.pde - 마우스 x좌표에 따라 밝기를 조정하는 예제  
 - adjustBrightnessByDistance.pde - 마우스 위치에서 특정거리 만큼만 이미지가 보이도록 밝기를 조정하는 예제    
 - modifyImage.pde - 사진을 불러와서 픽셀단위로 수정하는 예제  
 - momo.pde - 모모랜드 사진이 회전하면서 왔다갔다하는 예제  
 - rectExplosion.pde - 이미지가 사각형으로 분해되면서 3차원적으로 튀어나오는 예제  
 - threshold.pde - 특정 명도 이상을 흰색으로 미만을 검정색으로 처리해주는 예제
 - threshold.pde - 특정 명도 이상을 흰색으로 미만을 검정색으로 처리해주는 예제  
 - threshold.pde - 특정 명도 이상을 흰색으로 미만을 검정색으로 처리해주는 예제  
 - threshold2.pde - 이미지를 이진화하고 마우스 좌표에 따라 명도를 조정하는 예제  
 - tintImage.pde - 불러온 사진의 tint값을 변환시켜주는 예제  


---
### arduinoSerial  
아두이노와 프로세싱 사이의 시리얼 통신 테스트 예제(폰트삽입포함)   
 - arduinoToProcessing - 아두이노의 센싱값을 시리얼 통신을 통해 프로세싱으로 전송하는 예제  
 - processingToArduino - 프로세싱의 처리값을 시리얼 통신을 통해 아두이노로 전송하는 예제  


---
### data
txt, csv파일 등에서 데이터를 불러와 처리하는 예제  
 - addAndRead.pde - csv파일에 데이터를 삽입하고 불러오는 예제  
 - analyzingOfText.pde - 웹상에 있는 텍스트 문서를 불러와서 단어의 빈도수를 바 그래프로 분석하는 예제  
 - analyzingOfText2.pde - 웹상에 있는 텍스트 문서를 불러와서 단어의 빈도수를 글씨 크기로 분석하는 예제  
 - bubbleSign.pde - 버튼을 누르면 거품이 하나씩 늘어나며(최대 10개 까지) 롤오버를 하면 거품의 이름이 나타나는 예제  
 - parsinIMDB.pde - IMDB사이트의 HTML을 불러와서 내가 원하는 정보를 획득하는 예제  
 - table.pde - csv파일을 테이블로 불러와 한 줄씩 row에 넣고 header에있는 분류로 불러오는 예제  
 - loopTable.pde - 한 번에 한 줄만 반환하는 gerRow()함수를 for문을 활용해 원하는 범위의 내용을 반복하여 불러오는 예제  


---
### serverAndClient
 - broadcasting.pde -
 - client.pde - 
 - receiveData.pde -
 - server.pde -


---
### 각종예제  
- adjustProbability.pde - 확률을 인위적으로 조정하는 예제  
- adjustProbability2.pde - 확률을 인위적으로 조정하는 예제 2  
- adjustProbability3.pde - 확률을 인위적으로 조정해 화면에 해당 색깔이 들어간 원을 그리는 예제  
- adjustProbability4.pde - 확률을 인위적으로 조정해 화면의 하얀색 원이 확률에 따라 오르락내리락 하게 하는 예제  
- array50point.pde - 배열을 사용해 50개의 점을 연속으로 찍는 예제  
- array50point2.pde - 배열을 사용해 50개의 점을 연속으로 찍으며 그 색과 크기를 변화시키는 예제  
- arrayClassSnake.pde - 배열과 클래스를 사용해 50개의 점을 연속으로 찍어 표현하는 뱀을 그리는 예제  
- arrayFunctionBall.pde - 배열함수를 사용해 원하는 숫자의 볼에 중력을 적용하는 예제  
- arrayZoogies.pde - 객체배열을 통해 수많은 Zoog를 만드는 예제  
- biggingCircle.pde - 마우스를 따라다니며 점점 커지는 원  
- catchBall.pde - 공이 겹치면 메시지와 함께 색이 변하게 하는 예제  
- colorChange.pde - 마우스의 x좌표에 따라 색깔이 바뀌는 예제
- colorChange1.pde - 마우스의 x좌표에 따라 배경색이 점점 바뀌는 예제
- constrain.pde - constrain 함수를 사용해 변수의 값을 제한하는 예제  
- createCircle.pde - 변수를 사용해 원을 그리는 예제
- createLine.pde - 변수를 사용해 라인을 그리는 예제
- distance.pde - 중심점으로부터 거리를 재는 예제  
- factorial.pde - 팩토리얼을 계산해주는 예제  
- factorialRecursion.pde - 팩토리얼을 재귀함수를 통해 계산해주는 예제  
- flyingZoog.pde - 변수를 사용해 날아가는 Zoog 만들기
- function.pde - 함수를 이용해 얼굴 모양을 바운스하는 예제  
- functionCar.pde - 함수를 이용해 다양한 색깔과 크기의 자동차를 그리는 예제  
- functionCircle.pde - 함수의 리턴값을 이용해 원의 중심으로부터\의 거리를 재고 그 거리에 따라 원의 색을 바꾸는 예제  
- functionZoog.pde - 함수를 이용해 Zoog 에 따라 눈의 색깔을 바꾸고, Zoog가 떨리도록 하는 예제  
- map.pde - 맵함수를 사용해 창의 크기에 맞게 색을 바꿔주는 예제  
- matrixOverlap.pde - 중첩된 행렬을 이용해 기하학적 그림을 그리는 예제  
- matrixRotate.pde - 행렬(Matrix)을 활용해 서로 다른 두 축을 기준으로 회전하는 예제  
- matrixRotate2.pde - 행렬(Matrix)을활용해 다양한 크기의 사각형을 회전시키는 예제  
- modulo.pde - 나머지를 구하는 %를 사용하여 배열의 총 길이에 이르면 언제나 0으로 되돌리는 방법  
- mouseInteraction.pde - 마우스를 이동하면 그 값에 따라 모양이 변하는 예제  
- moveZoog.pde - transrate함수를 사용하여 객체가 마우스를 따라 다니도록 하는 예제  
- objectCar.pde - 객체를 활용하기 전에 일반적인 코드로 작성된 자동차 예제  
- objectClassCar.pde - 클래스로 객체를 만들어 작성된 자동차 예제  
- objectClassCar2.pde - 클래스에 인수를 적용하여 서로 다른 여러 자동차 객체를 만드는 예제  
- objectClassGravity.pde - 클래스에 인수를 적용하여 서로 다른 공객체가 중력에 의해 작용되는 예제  
- objectClassZoog.pde - 클래스와 인수를 적용한 Zoog  
- objectInteraction - 롤오버가 되면 색깔이 밝아지도록 하는 상호반응형 객체를 만드는 예제  
- oscillation.pde - 삼각함수를 사용해 진동을 만들고, 추를 시각화하는 예제  
- oscillationPerlin.pde - 펄린 노이즈를 사용한 진동 예제  
- perlinNoise.pde - 펄린 노이즈를 사용해 박스의 y좌표 위치와 y축 길이를 변화시키는 예제  
- perlinNoise2.pde - 펄린 노이즈를 사용해 주파수 형태를 그리는 예제  
- perlinNoiseCircle.pde - 펄린 노이드를 사용해 원의 크기를 조절하는 예제  
- pixels.pde - 픽셀을 임의의 컬러로 설정하는 예제    
- pixels2.pde - 픽셀에 1차원 배열로 접근하는 방법에 대한 예제  
- pushPopMatrix.pde - pushMatrix()와 popMatrix()함수를사용해 행렬변환을 하는 예제  
- randomColorBox.pde - 랜덤함수를 사용하여 컬러박스를 생성하는 예제  
- randomCounts - 랜덤 함수에 의해 발생하는 값의 분포를 확인하는 예제  
- recursionCircle.pde - 재귀함수를 이용해 만든 동심원 예제  
- recursionCircle2.pde - 재귀함수를 이용해 만든 프랙탈 예제  
- recursionCircle3.pde - 재귀함수를 이용해 만든 프랙탈 예제2  
- rotateMouse.pde - 사각형을 마우스 좌표에 따라 회전하는 3D 예제    
- rotatePyramid.pde - 함수로 만든 피라미드를 회전시키는 예제  
- rotateZXY.pde - 사각형을 각각 Z, X, Y축을 기준으로 회전하는 3D 예제  
- scale.pde - 사각형을 스케일 변환하는 예제  
- shooting.pde - 슈팅게임 만들기 미션 수행중.....  
- sine.pde - sine함수를 이용해 sine파를 그려주는 예제  
- solarSystem.pde - 간단한 태양계를 표현하는 행렬변환(pushMatrix, popMatrix)  
- solarSystem2.pde - 클래스와 행렬변환을 이용해 표현한 태양계  
- solarSystemWithMoon.pde - 달을 포함한 태양계  
- tile.pde - 타일모양의 랜덤컬러박스  
- timerScreenSaver.pde - 1초 단위로 바탕화면 색이 바뀌는 화면보호기 예제  
- trigonometryCircle.pde - 삼각법을 이용해 원을 그리는 예제  
- trigonometryCircle2.pde - 삼각법을 이용해 커지는 원을 그리는 예제  
- twoDimensionalArray.pde - 2차원 배열을 이용한 점찍기  
- twoDimensionalArray.pde - 2차원 배열을 이용한 픽셀 슬라이드  
- useSystemVar.pde - 시스템 변수를 활용해보는 예제
- useVariable.pde - 변수를 활용해보는 예제
- videoCapture.pde - 웹캠 영상을 뿌려주는 예제
- zoog.pde - zoog를 그리는 프로그램
