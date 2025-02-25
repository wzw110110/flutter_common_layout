// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getArticlesHash() => r'156176836160b9214b9c67991f2fd54e1551fb1b';

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

/// See also [getArticles].
@ProviderFor(getArticles)
const getArticlesProvider = GetArticlesFamily();

/// See also [getArticles].
class GetArticlesFamily extends Family<AsyncValue<List<ArticleItem>?>> {
  /// See also [getArticles].
  const GetArticlesFamily();

  /// See also [getArticles].
  GetArticlesProvider call(
    int page,
  ) {
    return GetArticlesProvider(
      page,
    );
  }

  @override
  GetArticlesProvider getProviderOverride(
    covariant GetArticlesProvider provider,
  ) {
    return call(
      provider.page,
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
  String? get name => r'getArticlesProvider';
}

/// See also [getArticles].
class GetArticlesProvider extends FutureProvider<List<ArticleItem>?> {
  /// See also [getArticles].
  GetArticlesProvider(
    int page,
  ) : this._internal(
          (ref) => getArticles(
            ref as GetArticlesRef,
            page,
          ),
          from: getArticlesProvider,
          name: r'getArticlesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArticlesHash,
          dependencies: GetArticlesFamily._dependencies,
          allTransitiveDependencies:
              GetArticlesFamily._allTransitiveDependencies,
          page: page,
        );

  GetArticlesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<ArticleItem>?> Function(GetArticlesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArticlesProvider._internal(
        (ref) => create(ref as GetArticlesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  FutureProviderElement<List<ArticleItem>?> createElement() {
    return _GetArticlesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArticlesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArticlesRef on FutureProviderRef<List<ArticleItem>?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _GetArticlesProviderElement
    extends FutureProviderElement<List<ArticleItem>?> with GetArticlesRef {
  _GetArticlesProviderElement(super.provider);

  @override
  int get page => (origin as GetArticlesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
