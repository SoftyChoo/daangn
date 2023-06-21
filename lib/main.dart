import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), //이름지정 매개변수
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key}); //생성자

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5, // 바디와 떨어져있는 정도를 보여줌
        leading: Row(
          children: [
            SizedBox(width: 16),
            Text(
              '봉선동',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      body: Row(
        children: [
          // CilpRRect 를 통해 이미지에 곡선 border 생성
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            // 이미지
            child: Image.network(
              'https://cdn2.thecatapi.com/images/6bt.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ), // 이미지 들어갈 자리
          Column(
            children: [
              // 'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.'
              // '봉천동 · 6분 전'
              // '100만원'
              Row(
                children: [
                  // 빈 칸
                  // 하트 아이콘
                  // '1'
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}