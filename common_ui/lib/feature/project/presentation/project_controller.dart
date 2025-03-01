
import 'package:common_ui/feature/project/data/project_common_website_item.dart';
import 'package:common_ui/feature/project/data/project_hot_key_item.dart';
import 'package:common_ui/feature/project/data/project_responsitory.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_controller.g.dart';

@Riverpod(keepAlive: true)
Future<List<ProjectHotKeyItem>> hotKeyList(ref) async {
    return await ref.watch(projectResponsitoryProvider).getHotKeyList().then((value) => value.data);
}

@Riverpod(keepAlive: true)
Future<List<ProjectCommonWebsitItem>> commonSiteList(ref) async {
  return await ref.watch(projectResponsitoryProvider).getCommonWebsiteList().then((value) => value.data);
}