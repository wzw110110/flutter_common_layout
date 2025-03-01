
import 'package:common_ui/feature/square/data/square_respository.dart';
import 'package:common_ui/feature/square/data/square_tree_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'square_controller.g.dart';

@Riverpod(keepAlive: true)
class SquareController extends _$SquareController {
  FutureOr<List<SquareTreeItem>> build() async {
    return _loadTree();
  }

  Future<List<SquareTreeItem>> _loadTree() {
    return ref
        .watch(squareRespositoryProvider)
        .getSquareTree()
        .then((value) => value.data);
  }
}