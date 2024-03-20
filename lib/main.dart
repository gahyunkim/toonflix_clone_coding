import 'package:flutter/material.dart';

void main() {
  runApp(App());
  // widget은 레고 블럭이라고 생각할 수 있음, 레고블럭을 조립한다고 생각하면 됨
  // 왜냐하면 flutter에 있는 모든 것은 widget이기 때문
}

// 위젯으로 만드려면, flutter SDK에 있는 3개의 core Widget 중에 하나를 extend 받아야 함
// 모든 위젯은 build 메소드를 구현해야 함,
// build 메소드: flutter가 실행하는데, 뭘 리턴하던지 그걸 화면에서 보여줄 것임 + 우리 위젯의 UI를 만들어주는 것
class App extends StatelessWidget {
  // 부모 class에 이미 있는 메소드를 override 한다는 의미
  @override
  Widget build(BuildContext context) {
    // material이랑 cuperino는 각각 구글과 애플의 디자인 시스템임
    // scaffold는 우리 화면의 구조를 제공해줌 + 모바일 앱의 모든 화면은 scaffold가 필요함
    // scaffold는 navigation bar를 구현할 수 있도록 해주고, buttom tab bar나 상단 버튼, 화면 중앙 정렬 등과 같은 것을 담당함
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF181818),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text(
                          "Transfer",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
