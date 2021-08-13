import 'package:exemplo_login/features/register/bloc/register_event.dart';
import 'package:exemplo_login/features/register/bloc/register_state.dart';
import 'package:exemplo_login/features/register/models/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterNamePageState(name: ''));

  final Register _register = const Register.empty();

  Register get register => _register;  

  RegisterState _previousState = const RegisterNamePageState(name: '');

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
   ) async* {

     if(event is RegisterNextPage){
       yield _nextPage();
     }
     if(event is RegisterPreviousPage){
       yield _previousPage();
     }
   }

  void nextPage(){

    add(RegisterNextPage());
  }

  void previousPage(){

    add(RegisterPreviousPage());
  }

  RegisterState _previousPage(){
    return _previousState;
  }

  RegisterState _nextPage() {
    RegisterState nextState = RegisterEmailPageState(email: _register.email);
    _previousState = state;
    switch (state.runtimeType) {
      case RegisterNamePageState:
        nextState = RegisterEmailPageState(email: _register.email);
        break;      
      case RegisterEmailPageState:
        nextState = RegisterPasswordPageState();
        break;
      default:
    }

    return nextState;
  }

}