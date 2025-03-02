// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleControllerHash() => r'd3e1057864537e0538cf74b3d15e3b8579085927';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ArticleController
    extends BuildlessAsyncNotifier<BasePaginationData<ArticleItem>> {
  late final int cid;

  FutureOr<BasePaginationData<ArticleItem>> build(
    int cid,
  );
}

/// See also [ArticleController].
@ProviderFor(ArticleController)
const articleControllerProvider = ArticleControllerFamily();

/// See also [ArticleController].
class ArticleControllerFamily
    extends Family<AsyncValue<BasePaginationData<ArticleItem>>> {
  /// See also [ArticleController].
  const ArticleControllerFamily();

  /// See also [ArticleController].
  ArticleControllerProvider call(
    int cid,
  ) {
    return ArticleControllerProvider(
      cid,
    );
  }

  @override
  ArticleControllerProvider getProviderOverride(
    covariant ArticleControllerProvider provider,
  ) {
    return call(
      provider.cid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'articleControllerProvider';
}

/// See also [ArticleController].
class ArticleControllerProvider extends AsyncNotifierProviderImpl<
    ArticleController, BasePaginationData<ArticleItem>> {
  /// See also [ArticleController].
  ArticleControllerProvider(
    int cid,
  ) : this._internal(
          () => ArticleController()..cid = cid,
          from: articleControllerProvider,
          name: r'articleControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articleControllerHash,
          dependencies: ArticleControllerFamily._dependencies,
          allTransitiveDependencies:
              ArticleControllerFamily._allTransitiveDependencies,
          cid: cid,
        );

  ArticleControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cid,
  }) : super.internal();

  final int cid;

  @override
  FutureOr<BasePaginationData<ArticleItem>> runNotifierBuild(
    covariant ArticleController notifier,
  ) {
    return notifier.build(
      cid,
    );
  }

  @override
  Override overrideWith(ArticleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArticleControllerProvider._internal(
        () => create()..cid = cid,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cid: cid,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ArticleController,
      BasePaginationData<ArticleItem>> createElement() {
    return _ArticleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticleControllerProvider && other.cid == cid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cid.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ArticleControllerRef
    on AsyncNotifierProviderRef<BasePaginationData<ArticleItem>> {
  /// The parameter `cid` of this provider.
  int get cid;
}

class _ArticleControllerProviderElement extends AsyncNotifierProviderElement<
    ArticleController,
    BasePaginationData<ArticleItem>> with ArticleControllerRef {
  _ArticleControllerProviderElement(super.provider);

  @override
  int get cid => (origin as ArticleControllerProvider).cid;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
