import 'package:flutter/material.dart';

class AppNavigationService {
  final GlobalKey<NavigatorState> myNavigatorKey = GlobalKey<NavigatorState>();
  BuildContext? get currentContext => myNavigatorKey.currentContext;
  State? get currentState => myNavigatorKey.currentState;

  Future<dynamic> pushNamed(String routeName, {dynamic arguments}) {
    return myNavigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {dynamic arguments}) {
    return myNavigatorKey.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  void pop() {
    return myNavigatorKey.currentState!.pop();
  }
}

final appNavigationService = AppNavigationService();
