
import 'package:common_ui/feature/square/data/square_tree_item.dart';
import 'package:common_ui/services/network/api_interface.dart';
import 'package:common_ui/services/network/api_service_provider.dart';
import 'package:common_ui/services/network/data/api_base_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'square_respository.g.dart';

class SquareRespository {
  final ApiInterface _apiService;
  
  SquareRespository({required ApiInterface apiService}) : _apiService = apiService;
  
  Future<ApiBaseResponse<List<SquareTreeItem>>> getSquareTree() {
    return _apiService.getListData(path: "/tree/json", dataItemConverter: SquareTreeItem.fromJson);
  }
}

@Riverpod(keepAlive: true)
SquareRespository squareRespository(ref){
  return SquareRespository(apiService: ref.watch(apiServiceProvider));
}