import 'package:flutter/material.dart';
import 'package:toonflix/widgets/Button.dart';
import 'package:toonflix/widgets/card.dart';

// 개념 정리
// constant(상수): 절대 변하지 않는 변수 + 컴파일 전에 value를 사전에 알 수 있는 변수
// code actions: 코드를 매우 간단한 방법으로 리팩토링 하도록 해줌

void main() {
  runApp(const App());
  // widget은 레고 블럭이라고 생각할 수 있음, 레고블럭을 조립한다고 생각하면 됨
  // 왜냐하면 flutter에 있는 모든 것은 widget이기 때문
}

// 위젯으로 만드려면, flutter SDK에 있는 3개의 core Widget 중에 하나를 extend 받아야 함
// 모든 위젯은 build 메소드를 구현해야 함,
// build 메소드: flutter가 실행하는데, 뭘 리턴하던지 그걸 화면에서 보여줄 것임 + 우리 위젯의 UI를 만들어주는 것
class App extends StatelessWidget {
  const App({super.key});

  // 부모 class에 이미 있는 메소드를 override 한다는 의미
  @override
  Widget build(BuildContext context) {
    // material이랑 cuperino는 각각 구글과 애플의 디자인 시스템임
    // scaffold는 우리 화면의 구조를 제공해줌 + 모바일 앱의 모든 화면은 scaffold가 필요함
    // scaffold는 navigation bar를 구현할 수 있도록 해주고, buttom tab bar나 상단 버튼, 화면 중앙 정렬 등과 같은 것을 담당함
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
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
                const SizedBox(
                  height: 120,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: "BTC",
                  amount: '9 785',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                ),
              ],
            ),
          )),
    );
  }
}
