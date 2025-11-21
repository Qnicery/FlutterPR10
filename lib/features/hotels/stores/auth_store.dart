import 'package:mobx/mobx.dart';
import '../models/user.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  @observable
  ObservableList<User> users = ObservableList.of(
    [
      User(
        id: 1,
        name: "Admin",
        email: "test@mail.ru",
        password: "1"
      ),
    ]
  );

  @observable
  late User? currentUser = users[0];

  @computed
  bool get isLoggedIn => currentUser != null;

  @action
  String? register(String name, String email, String password) {
    if (users.any((u) => u.email == email)) {
      return 'Почта уже используется';
    }

    final user = User(
      id: users.length + 1,
      name: name,
      email: email,
      password: password,
    );

    users.add(user);
    currentUser = user;

    return null;
  }

  @action
  String? login(String login, String password) {
    final user = users.firstWhere(
          (u) => (u.email == login || u.name == login) && u.password == password,
      orElse: () => User(id: -1, name: '', email: '', password: ''),
    );

    if (user.id == -1) {
      return 'Неверные данные';
    }

    currentUser = user;
    return null;
  }

  @action
  void logout() {
    currentUser = null;
  }
}
