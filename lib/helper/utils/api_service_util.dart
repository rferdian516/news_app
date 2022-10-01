// ignore_for_file: prefer_conditional_assignment

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/helper/utils/base_url_util.dart';

class ApiService {
  static var client = http.Client();
  static final String _url = BaseUrl().getBaseUrl();
  static final String _key = BaseUrl().getApiKey();

  static Map<String, String> _setHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
  }

  static Future getData(String endpoint) async {
    var response = await client.get(Uri.parse("$_url/$endpoint&apiKey=$_key"),
        headers: _setHeaders());

    try {
      var data = jsonDecode(response.body);
      if (response.statusCode != 200) {
        return Future.error(data);
      }
      return data;
    } catch (e) {
      debugPrint("error getData -> $e");
    }
  }
}
