import 'package:flutter/material.dart';

void main() {
  // MyApp을 new하고 painter에게 그리라고 던져줌
  // const는 컴파일시 초기화
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea( // 폰의 상단바(인셋(못쓰는 영역))만큼의 공간을 띄우고 요소들을 나타냄
          child: Column( // 1개니까 child
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0), // 모든 인셋 부분에 padding 적용
                // 한 개니까 child
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ // 여러개니까 children
                    Text("Woman"),
                    // Spacer(),
                    Text("Kids"),
                    // Spacer(),
                    Text("Shoes"),
                    // Spacer(),
                    Text("Bag"),
                  ],
                ),
              ),
              Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
              SizedBox(height: 2),
              Expanded(child: Image.asset("assets/cloth.jpeg",fit: BoxFit.cover)),
            ],
          ),
        ),
      ),
    );
  }
}