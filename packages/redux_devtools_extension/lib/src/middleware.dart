import 'dart:developer';

import 'package:redux/redux.dart';

class ReduxDevToolsMiddleware<State> extends MiddlewareClass<State> {
  bool _initialized = false;

  void _init(Store<State> store) {
    if (_initialized) return;
    _initialized = true;

    registerExtension("ext.redux_devtools.dispatch",
        (method, parameters) async {
      log('Received $method with $parameters');

      // TODO Decode and dispatch action

      return ServiceExtensionResponse.result("hello world");
    });

    // TODO Register other methods
  }

  @override
  call(Store<State> store, action, NextDispatcher next) {
    _init(store);

    postEvent("redux:action", {"action": action.toString()});

    next(action);
  }
}
