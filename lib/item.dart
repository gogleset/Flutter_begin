import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
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
                          child: Text(
                            "캐논 DSLR 단렌즈 100D(단렌즈 충전기 16기가SD 포함)",
                            style: TextStyle(fontSize: 16),
                          ),
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.black,
                          //     width: 1,
                          //   ),
                          // ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "대림동, 끌올 10분 전",
                            style: TextStyle(fontSize: 12),
                          ),
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.black,
                          //     width: 1,
                          //   ),
                          // ),
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
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.black,
                          //     width: 1,
                          //   ),
                          // ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          // decoration: BoxDecoration(
                          //   border: Border.all(
                          //     color: Colors.black,
                          //     width: 1,
                          //   ),
                          // ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 30,
                                height: double.infinity,
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                  size: 24.0,
                                  semanticLabel:
                                      'Text to announce in accessibility modes',
                                ),
                              ),
                              Container(
                                width: 30,
                                height: double.infinity,
                                alignment: Alignment.center,
                                child: Text(
                                  "4",
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]))
          ],
        ));
  }
}
