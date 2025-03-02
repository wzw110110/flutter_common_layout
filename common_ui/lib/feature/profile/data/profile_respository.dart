
import 'package:common_ui/services/network/api_interface.dart';
import 'package:common_ui/services/network/api_service_provider.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_respository.g.dart';

class ProfileRespository {
  final ApiInterface _apiService;
  ProfileRespository(ApiInterface apiService):_apiService = apiService;
  
  Future<ApiBaseResponse> login ({required String username ,required String password}) {
    return _apiService.postData(path: "/user/login", data: {"username":username,"password":password}, converter: (_)=>null);
  }
}

@Riverpod(keepAlive: true)
ProfileRespository profileRespository(ref) {
  return ProfileRespository(ref.watch(apiServiceProvider));
}