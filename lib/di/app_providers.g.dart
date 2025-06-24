// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mainInitHash() => r'0a928547baa9feb39ac12761bc6ee04e6413b563';

/// See also [mainInit].
@ProviderFor(mainInit)
final mainInitProvider = AutoDisposeProvider<void>.internal(
  mainInit,
  name: r'mainInitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mainInitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MainInitRef = AutoDisposeProviderRef<void>;
String _$apiClientHash() => r'6e19262590f586655dd1f236133bacc9a9ed2c60';

/// See also [apiClient].
@ProviderFor(apiClient)
final apiClientProvider = AutoDisposeProvider<Dio>.internal(
  apiClient,
  name: r'apiClientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiClientRef = AutoDisposeProviderRef<Dio>;
String _$socketServiceHash() => r'1139f29e5ef5afa25852869d5b85c17ecb10e8a0';

/// See also [socketService].
@ProviderFor(socketService)
final socketServiceProvider = Provider<SocketService>.internal(
  socketService,
  name: r'socketServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$socketServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SocketServiceRef = ProviderRef<SocketService>;
String _$apiServicesHash() => r'315a5241b150e84a2313d0bce214e7c44dbc91e9';

/// See also [apiServices].
@ProviderFor(apiServices)
final apiServicesProvider = AutoDisposeProvider<ApiServices>.internal(
  apiServices,
  name: r'apiServicesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$apiServicesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApiServicesRef = AutoDisposeProviderRef<ApiServices>;
String _$remoteRepositoryHash() => r'0a934e653b6d2a9c836f76413281149bf50cf469';

/// See also [remoteRepository].
@ProviderFor(remoteRepository)
final remoteRepositoryProvider = AutoDisposeProvider<RemoteRepository>.internal(
  remoteRepository,
  name: r'remoteRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteRepositoryRef = AutoDisposeProviderRef<RemoteRepository>;
String _$localRepositoryHash() => r'0f2483747edaf12ec3bcaa986809878839fb45ae';

/// See also [localRepository].
@ProviderFor(localRepository)
final localRepositoryProvider = AutoDisposeProvider<LocalRepository>.internal(
  localRepository,
  name: r'localRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocalRepositoryRef = AutoDisposeProviderRef<LocalRepository>;
String _$notificationManagerHash() =>
    r'fd75736a11f80b0b5c1118544198941cc5949c84';

/// See also [notificationManager].
@ProviderFor(notificationManager)
final notificationManagerProvider =
    AutoDisposeProvider<MyNotificationManager>.internal(
  notificationManager,
  name: r'notificationManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$notificationManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotificationManagerRef = AutoDisposeProviderRef<MyNotificationManager>;
String _$getConnectivityHash() => r'9de66cfef7da4410d48ea97952fd1afa20e7523e';

/// See also [getConnectivity].
@ProviderFor(getConnectivity)
final getConnectivityProvider = AutoDisposeStreamProvider<bool>.internal(
  getConnectivity,
  name: r'getConnectivityProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getConnectivityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetConnectivityRef = AutoDisposeStreamProviderRef<bool>;
String _$deepLinkingHash() => r'195ac110c8affd33e9131ab7d13d39336f05bfcf';

/// See also [deepLinking].
@ProviderFor(deepLinking)
final deepLinkingProvider = Provider<DeepLinking>.internal(
  deepLinking,
  name: r'deepLinkingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deepLinkingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeepLinkingRef = ProviderRef<DeepLinking>;
String _$initialDeepLinkHash() => r'a1ec91123867dda972a8f1776efba03fb6a75256';

/// See also [initialDeepLink].
@ProviderFor(initialDeepLink)
final initialDeepLinkProvider = AutoDisposeFutureProvider<Uri?>.internal(
  initialDeepLink,
  name: r'initialDeepLinkProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initialDeepLinkHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InitialDeepLinkRef = AutoDisposeFutureProviderRef<Uri?>;
String _$deepLinkUriHash() => r'd63be8ac71210158785f4fd5674d175e8ba79978';

/// See also [DeepLinkUri].
@ProviderFor(DeepLinkUri)
final deepLinkUriProvider =
    AutoDisposeNotifierProvider<DeepLinkUri, Uri?>.internal(
  DeepLinkUri.new,
  name: r'deepLinkUriProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deepLinkUriHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DeepLinkUri = AutoDisposeNotifier<Uri?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
