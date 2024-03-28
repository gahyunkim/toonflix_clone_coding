import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// StatefulWidget은 살아있다는 것을 알아야 함! => 생명주기를 가지고 있어서 이벤트에 반응함
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // int counter = 0;
  // void onClicked() {
  //   // State Class에게 데이터가 변경되었다고 알리는 함수
  //   // 데이터의 변화는 무조건 setState에 넣어줘야 함
  //   // setState는 Dart를 깨우고 다시 build를 실행시켜서 새롱ㄴ 데이터를 UI에 반영함
  //   setState(() {
  //     counter += 1;
  //   });
  // }

  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
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
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothing'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 상태를 초기화하기 위한 메소드
  // 거의 대부분의 상황에서 이 메소드가 필요하지는 않음

  // 종종 API에서 업데이트 하고 싶은 경우 + initState 메소드가 항상 build보다 먼저 호출되어야 함
  // initState에서 우리는 변수를 초기화하고, API 업데이트를 구독할 수 있게 함
  @override
  void initState() {
    super.initState();
    // 한번만 실행됨. 화면에 한번 만 보여지는 것을 확인할 수 있음
    print('hello!');
  }

  // dipose는 위젯이 스크린에서 제거될 때 호출되는 메소드
  // API 업데이트나 이벤트 리스너로부터 구독을 취소하거나, form의 리스터노부터 벗어나고 싶을때 사용할 수 있음
  // => 무엇으로부터 벗어나고 싶을 때 사용함

  // 우리의 위젯이 위젯 트리에서 제거될 때는 dispose메소드가 실행됨 => 메소드 안에서 이벤트 리스너와 같은 것들을 구독 취소함
  @override
  void dispose() {
    super.dispose();
    print('dispose!');
  }

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
