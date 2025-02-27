// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeBannerListHash() => r'7227d39d7c6726a8ab5398ad3762e371309c2c32';

/// See also [homeBannerList].
@ProviderFor(homeBannerList)
final homeBannerListProvider = FutureProvider<List<HomeBannerItem>>.internal(
  homeBannerList,
  name: r'homeBannerListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeBannerListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HomeBannerListRef = FutureProviderRef<List<HomeBannerItem>>;
String _$homeControllerHash() => r'd2003f8aab98a7902331389281ed648d79f6161c';

/// See also [HomeController].
@ProviderFor(HomeController)
final homeControllerProvider = AsyncNotifierProvider<HomeController,
    BasePaginationData<HomeArticleListItem>>.internal(
  HomeController.new,
  name: r'homeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeController
    = AsyncNotifier<BasePaginationData<HomeArticleListItem>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
