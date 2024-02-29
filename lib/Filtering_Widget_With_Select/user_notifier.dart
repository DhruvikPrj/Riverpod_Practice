import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/Filtering_Widget_With_Select/user.dart';

class UserNotiofier extends StateNotifier<User> {
  UserNotiofier(super.state);

  void updateName(String newName) {
    state = state.copyWith(name: newName);
  }

  void updateAddress(String newAddress) {
    state = state.copyWith(name: newAddress);
  }
}
