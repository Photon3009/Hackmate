import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hackmate/features/authentication/data/blocs/auth_cubit.dart';
import 'package:hackmate/features/authentication/data/models/app_user_model.dart';

class LoginListener extends BlocListener<AuthCubit, AuthState> {
  LoginListener({
    super.key,
    void Function(BuildContext context, AppUser user)? onLogin,
    void Function(BuildContext context)? onLogout,
    super.child,
  }) : super(
            listener: (context, authState) => authState.user != null
                ? onLogin?.call(context, authState.user!)
                : onLogout?.call(context),
            // Since AutoLogin will trigger a state change for isLoading
            // we need to listen to it as well as
            // And user state is preserverd in HydratedBloc
            // and only it will not trigger listener when autologin used
            listenWhen: (prev, next) => (next.user?.id != prev.user?.id));
}
