import 'dart:convert';

import 'package:http/http.dart';
import 'package:riverpod_practice/future_provider/getUser/userModel/user_model.dart';

class ApiService {
  Future<List<UserModel>> getUser() async {
    Response response =
        await get(Uri.parse("https://reqres.in/api/users?page=2"));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => UserModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
