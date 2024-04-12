import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // Flexible은 하나의 박스가 얼마나 공간을 차지할 찌 비율을 정할 수 있음
          Flexible(
            flex: 1,
            child: Container(
              child: const Text(
                '25:00',
              ),
              // decoration: const BoxDecoration(
              //   color: Colors.red,
              // ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
