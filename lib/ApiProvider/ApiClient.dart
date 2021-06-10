import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiClient {
  //this is for header for SignUp and login
  static header() => {
        'Content-Type': 'application/json',
      };

  static Future Request(
      String url, Method method, Map<String, dynamic>? body) async {
    var response;
    try {
      if (method == Method.POST) {
        response =
            await http.post(Uri.parse(url), body: body, headers: header());
      } else if (method == Method.DELETE) {
        response = await http.delete(Uri.parse(url), headers: header());
      } else if (method == Method.PATCH) {
        response =
            await http.patch(Uri.parse(url), headers: header(), body: body);
      } else {
        response = await http.get(Uri.parse(url), headers: header());
      }
      showData(
          url: url,
          response: response.body,
          code: response.statusCode,
          body: body,
          method: method,
          header: header());

      if (response.statusCode == 200) {
        return response;
      } else if (response.statusCode == 401) {
        return {'error': "Unauthorized"};
      } else if (response.statusCode == 403) {
        return {'error': "Session Out"};
      } else {
        return {"error": "Something Went Wrong"};
      }
    } catch (e) {
      return {'error in Api_client ${e.toString()}'};
    }
  }

  // static Future getOrder(BuildContext context, {@required String url}) async {
  //   var response;
  //   try {
  //     response = await http.get(url, headers: header());
  //     showData(
  //         url: url,
  //         response: response.body,
  //         method: Method.GET,
  //         header: header());
  //     if (response.statusCode == 200 || response.statusCode == 401) {
  //       return CheckAuthentication(json.decode(response.body), context);
  //     } else {
  //       print("Something Went worng in else");
  //       // FlushbarHelper.createError(message: "Something Went Wrong",position: FlushbarPosition.TOP)..show(context);
  //       return response.body;
  //     }
  //   } catch (e) {
  //     return {'error': "Check Your Internet....."};
  //   }
  // }

  static void showData(
      {String? url,
      Map<String, dynamic>? body,
      String? response,
      var code,
      Method? method,
      Map<String, dynamic>? header}) {
    if (!kReleaseMode) {
      print("URL = $url");
      print("Status Code= $code");
      print("Body = $body");
      print("Method = $method");
      print("Header = $header");
      print("Response = $response");
    }
  }
}
