
import 'package:common_ui/feature/profile/data/profile_respository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void>build() {}

  Future<AsyncValue<void>> login(
      {required String username, required String password}) async {
    final respository = ref.read(profileRespositoryProvider);
    state = await AsyncValue.guard(
        () => respository.login(username: username, password: password));
    return state;
  }

  Future<AsyncValue<void>> register(
      {required String username,
      required String password,
      required String repassword}) async {
    final respository = ref.read(profileRespositoryProvider);
    state = await AsyncValue.guard(
        () => respository.register(username: username, password: password,repassword: repassword));
    return state;
  }
}