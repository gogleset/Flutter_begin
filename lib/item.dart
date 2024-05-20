import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_begin/httpRequest.dart';
import 'package:flutter_begin/likeCount.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({super.key});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  Widget build(BuildContext context) {
    return Container(
        // width: double.infinity,
        height: 150,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                  color: Colors.black,
                  child: Image.asset(
                    "assets/images/cutecat.jpeg",
                    width: double.infinity,
                    height: double.infinity,
                  )),
            ),
            Flexible(
                flex: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "캐논 DSLR 단렌즈 100D(단렌즈 충전기 16기가SD 포함)",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "대림동, 끌올 10분 전",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "230000",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          child: const LikeWidget(
                            num: 1,
                          ),
                        ),
                      )
                    ]))
          ],
        ));
  }
}
