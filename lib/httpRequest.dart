import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
//📲http라는 단어가 범용적이다 보니 따로 쓰일 때가 있기 때문에 as로 http로 선언해줍니다.
import 'dart:convert';

Future<Map<String, dynamic>> httpGet({required String path}) async {
  String baseUrl = '$path';
  //📲기본적인 url을 선언해주고 $path로 나머지 route를 설정해줍니다.
  try {
    http.Response response = await http.get(Uri.parse(baseUrl), headers: {
      //📲 http.Response, http.get 부분이 as http로 선언했기 때문에 가능합니다.
      "accept": "application/json",
      "Content-Type": "application/json",
    });
    //📲http통신하는 부분으로 GET이기 때문에 request에 따라 url, headers를 설정해줍니다.
    try {
      Map<String, dynamic> resBody =
          jsonDecode(utf8.decode(response.bodyBytes));
      resBody['statusCode'] = response.statusCode;
      return resBody;
      //📲res를 받을때 stateCode까지 res에 넣는 과정이다.
      //  이렇게 하면 body와 stateCode까지 한번에 다룰 수 있기 때문에 추천합니다.
    } catch (e) {
      // response body가 json이 아닌 경우
      return {'statusCode': 490};
    }
  } catch (e) {
    // 서버가 응답하지 않는 경우
    debugPrint("httpGet error: $e");
    return {'statusCode': 503};
  }
}
