import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CM.dart';
import 'package:http/http.dart' as http;
import 'constant.dart';


Future<Map<String, dynamic>> PostRequest(String url, Map map,
    BuildContext context, String token, bool isAuthentication) async {
  var header;

  header = {'Accept': 'application/json', 'strSecurityKey': SECURITY_KEY,'Content-Type': 'application/json'};

  http.Response response =
  await http.post(Uri.parse(url), headers: header, body: map/*bodyBytes*/);

  var responseBody = json.decode(response.body);
  final parsed = json.decode(response.body).cast<String, dynamic>();
  var statusCode = parsed["StatusCode"];
  print("value : " + response.body);
  if (responseBody == null) {
    throw FetchDataException("An error occured: [Status code : $statusCode]");
  } else if (statusCode == 401) {

    CM.ackAlert(context, parsed[ApiError]);
  }

  return responseBody;
}

Future<Map<String, dynamic>> postRequestArr(String url, Map map,
    BuildContext context, String token, bool isAuthentication) async {
  print(map);

  var header;
  header = {'Accept': 'application/json', 'strSecurityKey': SECURITY_KEY,
    'Content-Type': 'application/json'};
  print(url);
  String jsonString = json.encode(map); // encode map to json
  print(jsonString);

  http.Response response =
  await http.post(url, headers: header, body: jsonString);
  var responseBody = json.decode(response.body);
  //print("Responce Body" + response.body);

  final parsed = json.decode(response.body)[0].cast<String, dynamic>();
  var statusCode = response.statusCode;
  print("value : " + response.body);
  if (responseBody == null) {
    throw FetchDataException("An error occured: [Status code : $statusCode]");
  } else if (statusCode == 401) {
    CM.ackAlert(context, parsed[ApiError]);
  }
  return parsed;
}

class FetchDataException implements Exception {
  final _message;

  FetchDataException([this._message]);

  String toString() {
    if (_message == null) return "Exception";
    return "Exception: $_message";
  }
}
