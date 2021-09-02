import 'package:bloc/bloc.dart';
import 'package:myarts/presentation/blocs/authentication/authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  void checkAuthencation() {
    emit(Authenticated());
  }

  void login() {
    emit(Authenticated());
  }

  void register() {
    emit(Authenticated());
  }
}
