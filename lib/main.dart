import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  void onClicked() {
    // State Class에게 데이터가 변경되었다고 알리는 함수
    // 데이터의 변화는 무조건 setState에 넣어줘야 함
    // setState는 Dart를 깨우고 다시 build를 실행시켜서 새롱ㄴ 데이터를 UI에 반영함
    setState(() {
      counter += 1;
    });
  }

  // BuildContext를 사용해서 우리가 어떤 위젯이고, 누가 우리의 부모 요소인지 알수 있고, 맨 위
  // 부모 요소에도 접근할 수 있음

  // BuildContext는 위젯 트리에서 위젯의 위치를 제공하고 이를 통해 상위 요소 데이터에 접근할 수 있음
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
