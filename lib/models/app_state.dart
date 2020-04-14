import 'package:flutter/foundation.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/user.dart';
import 'package:simple_app/service_locator.dart';
import 'package:simple_app/services/auth_service.dart';
import 'package:simple_app/view_state.dart';

class AppState extends Model {
  AuthService _authService = locator<AuthService>();
  
  User _user;
  User get user => _user;
  String get username => _user != null ? _user.username : '';

  void _setUser(User newUser) {
    _user = newUser;
    notifyListeners();
  }

  ViewState _state;
  ViewState get state => _state;

  void _setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }

  Future login({@required String username, @required String password}) async {    
    _setState(ViewState.Busy);
    if (_user != null) {
      _setState(ViewState.Ready);
      return;
    }

    final isRegistered = await _authService.login(username: username, password: password);
    if (isRegistered) {
      _setUser(User(username: username, password: password));
      _setState(ViewState.Ready);
    } else {
      _setState(ViewState.Error);
    }   
  }
}