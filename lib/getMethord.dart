import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'CM.dart';
import 'constant.dart';



Future<Map<String, dynamic>> GetRequest(String url, BuildContext context) async {
  var header;

  header = {'Accept': 'application/json', 'strSecurityKey': SECURITY_KEY};

  http.Response response = await http.get(url, headers: header);
  print(header);
  print(url);
  var responseBody = json.decode(response.body);
  final parsed = json.decode(response.body).cast<String, dynamic>();
  var statusCode = response.statusCode;
  if (responseBody == null) {
    throw FetchDataException("An error occured: [Status code : $statusCode]");
  } else if (statusCode == 401) {

    CM.ackAlert(context, parsed["Message"]);
  }

  return json.decode(response.body);
}

Future<Map<String, dynamic>> GetRequestArr(String url, BuildContext context) async {
  var header;

  header = {'Accept': 'application/json', 'strSecurityKey': SECURITY_KEY};

  http.Response response = await http.get(url, headers: header);
  print(header);
  print(url);
  var responseBody = json.decode(response.body);
  final parsed = json.decode(response.body)[0].cast<String, dynamic>();
  var statusCode = response.statusCode;
  if (responseBody == null) {
    throw FetchDataException("An error occured: [Status code : $statusCode]");
  } else if (statusCode == 401) {

    CM.ackAlert(context, parsed["Message"]);
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
