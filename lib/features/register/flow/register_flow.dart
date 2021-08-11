import 'package:exemplo_login/features/register/bloc/register_bloc.dart';
import 'package:exemplo_login/features/register/bloc/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterFlow extends StatelessWidget {
  const RegisterFlow({Key? key}) : super(key: key);

  static const String route = '/register';

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<RegisterBloc>(context);
    return BlocBuilder<RegisterBloc, RegisterState>(
      bloc: bloc,
      builder: (context, state) {
        return Navigator(
          pages: pages(bloc, state),
          onPopPage: (route, result){
            return route.didPop(result);
          }
        );
      }
    );
  }


  List<Page<dynamic>> pages(RegisterBloc bloc, RegisterState state) {
    var list = [];

    return [];
  }
}