import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                "금호동3가",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              IconButton(
                onPressed: () {
                  print("fold");
                },
                icon: Icon(Icons.keyboard_arrow_down),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.alarm),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              color: Colors.black12,
              height: 0.5,
            ),
          ),
        ),
        body: Container(
          color: Colors.black12,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black38),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(5),
                      child: Image.asset("camera.jpg"),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child:
                                    Text("캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)"),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "성동구 행당동 * 풀옵 10분 전",
                                  style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "210,000원",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 17,
                                      color: Colors.red,
                                    ),
                                    Text("4"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
