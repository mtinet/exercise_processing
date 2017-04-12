size(200, 200);
background(255);

//ellipses와 rects를 Center모드로 설정
ellipseMode(CENTER);
rectMode(CENTER);

//Zoog 몸체 그리기
stroke(0);
fill(150);
rect(100, 100, 20, 100);

//Zoog 머리 그리기
fill(255);
ellipse(100, 70, 60, 60);

//Zoog 눈 그리기
fill(0);
ellipse(81, 70, 16, 32);
ellipse(119, 70, 16, 32);

//Zoog 다리 그리기
stroke(0);
line(90, 150, 80, 160);
line(110, 150, 120, 160);
