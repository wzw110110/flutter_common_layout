import 'package:common_ui/feature/profile/data/profile_respository.dart';
import 'package:common_ui/feature/profile/data/user_info.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.g.dart';

@Riverpod(keepAlive: true)
class ProfileController extends _$ProfileController {

  FutureOr<UserInfo> build() {
    return _fetchProfile();
  }

  Future<UserInfo> _fetchProfile() {
    return ref.watch(profileRespositoryProvider).getUserInfo().then((value) => value.data);
  }
}