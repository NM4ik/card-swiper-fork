import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class TestExamplePage extends StatefulWidget {
  const TestExamplePage({Key? key}) : super(key: key);

  @override
  State<TestExamplePage> createState() => _TestExamplePageState();
}

class _TestExamplePageState extends State<TestExamplePage> {
  final colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    // Colors.yellow,
    // Colors.black,
    // Colors.orange,
    // Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Swiper(
        itemCount: colors.length,
        loop: false,
        scrollDirection: Axis.vertical,
        viewportFraction: 1,
        itemWidth: mq.width,
        itemHeight: mq.height,
        layout: SwiperLayout.STACK,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print('TAP INDEX - $index ');
            },
            child: Container(
              child: SafeArea(
                child: PageView(
                  children: [
                    Container(
                      color: colors[index],
                      alignment: Alignment.topCenter,
                      child: Text(
                        'COLOR - ${colors[index].value} - $index',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.brown,
                      alignment: Alignment.topCenter,
                      child: Text(
                        'COLOR2 - ${colors[index].value} - $index',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
