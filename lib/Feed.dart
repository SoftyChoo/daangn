import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, //행끼리 정렬
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
        ),
        SizedBox(width: 12), //사진과 글 사이에 여백 넣기
        Expanded(
          //남은 공간만큼만 자리를 차지하도록 설정
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //열끼리 정렬
            children: [
              Text(
                'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2),
              Text(
                '봉천동 · 6분 전',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
              SizedBox(height: 4),
              Text(
                '100만원',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Spacer(), //자기의 공간을 최대한 차지하고 나머지 밀어냄 [스페이서+하트+숫자]이렇게 돼있는거임
                  GestureDetector(
                    //눌렀을 때 특정 동작을 하게 하는 위젯(버튼화)
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: Colors.black54,
                          size: 16,
                        ),
                        Text(
                          '1',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
