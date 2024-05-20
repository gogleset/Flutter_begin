import 'package:flutter/material.dart';

class LikeWidget extends StatefulWidget {
  final int num;

  const LikeWidget({super.key, required this.num});
  @override
  State<LikeWidget> createState() => LikeWidgetState();
}

class LikeWidgetState extends State<LikeWidget> {
  int count = 0;
  bool isPress = false;

  @override
  void initState() {
    super.initState();
    count = widget.num;
    // TODO: implement initState
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /*state 변경 시 호출*/
  }

  void counterHandler() {
    setState(() {
      isPress = !isPress;
      if (isPress == true) {
        count++;
      } else {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 30,
          child: IconButton(
            alignment: Alignment.center,
            onPressed: counterHandler,
            icon: const Icon(
              Icons.favorite,
              color: Colors.black,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ),
        Container(
          width: 30,
          height: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "$count",
            style: const TextStyle(
              fontSize: 18, // 폰트 크기
              fontWeight: FontWeight.bold, // 폰트 두께
              color: Colors.blue, // 텍스트 색상
            ),
          ),
        )
      ],
    );
  }
}
