import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkServices {
  static Future loginow({email, password}) async {
    var url = "https://apihomechef.antopolis.xyz/api/admin/sign-in";

    http.Response response = await http.post(Uri.parse(url), body: {
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      return throw response.body;
    }
  }
}
