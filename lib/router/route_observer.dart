import 'package:flutter/material.dart';

class RouteLoggingObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    print('📍 Pushed: ${route.settings.name}');
    print('⬅️ From: ${previousRoute?.settings.name}');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    print('🔙 Popped: ${route.settings.name}');
    print('➡️ Back to: ${previousRoute?.settings.name}');
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print('🔁 Replaced: ${oldRoute?.settings.name} → ${newRoute?.settings.name}');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
