import 'package:common_ui/feature/project/data/project_common_website_item.dart';
import 'package:common_ui/feature/project/data/project_hot_key_item.dart';
import 'package:common_ui/services/network/api_interface.dart';
import 'package:common_ui/services/network/api_service_provider.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_responsitory.g.dart';

class ProjectResponsitory {
  final ApiInterface _apiService;

  ProjectResponsitory({required ApiInterface apiService}) : _apiService = apiService;
  
  Future<ApiBaseResponse<List<ProjectHotKeyItem>>> getHotKeyList() {
    return _apiService.getListData(path: "/hotkey/json", dataItemConverter: ProjectHotKeyItem.fromJson);
  }

  Future<ApiBaseResponse<List<ProjectCommonWebsitItem>>> getCommonWebsiteList() {
    return _apiService.getListData(path: "/friend/json", dataItemConverter: ProjectCommonWebsitItem.fromJson);
  }
  
}

@Riverpod(keepAlive: true)
ProjectResponsitory projectResponsitory(ref) {
  return ProjectResponsitory(apiService: ref.watch(apiServiceProvider));
}