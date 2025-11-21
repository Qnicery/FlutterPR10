// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  Computed<bool>? _$isLoggedInComputed;

  @override
  bool get isLoggedIn => (_$isLoggedInComputed ??= Computed<bool>(
    () => super.isLoggedIn,
    name: '_AuthStore.isLoggedIn',
  )).value;

  late final _$usersAtom = Atom(name: '_AuthStore.users', context: context);

  @override
  ObservableList<User> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<User> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$currentUserAtom = Atom(
    name: '_AuthStore.currentUser',
    context: context,
  );

  @override
  User? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  bool _currentUserIsInitialized = false;

  @override
  set currentUser(User? value) {
    _$currentUserAtom.reportWrite(
      value,
      _currentUserIsInitialized ? super.currentUser : null,
      () {
        super.currentUser = value;
        _currentUserIsInitialized = true;
      },
    );
  }

  late final _$_AuthStoreActionController = ActionController(
    name: '_AuthStore',
    context: context,
  );

  @override
  String? register(String name, String email, String password) {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
      name: '_AuthStore.register',
    );
    try {
      return super.register(name, email, password);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? login(String login, String password) {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
      name: '_AuthStore.login',
    );
    try {
      return super.login(login, password);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
      name: '_AuthStore.logout',
    );
    try {
      return super.logout();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
users: ${users},
currentUser: ${currentUser},
isLoggedIn: ${isLoggedIn}
    ''';
  }
}
