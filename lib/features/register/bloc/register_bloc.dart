import 'package:exemplo_login/features/register/bloc/register_event.dart';
import 'package:exemplo_login/features/register/bloc/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const RegisterNamePageState(name: ''));

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
   ) async* {}


}