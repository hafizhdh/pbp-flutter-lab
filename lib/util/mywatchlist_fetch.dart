import 'dart:convert';

import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;


Future<List<MyWatchList>> fetchMyWatchList() async {
  var url =
      Uri.parse("http://assignment-pbp2.herokuapp.com/mywatchlist/json");
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchList> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(MyWatchList.fromJson(d));
    }
  }
  return listMyWatchList;
}
