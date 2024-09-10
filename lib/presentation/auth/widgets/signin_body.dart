import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/common/widgets/custom_app_bar.dart';
import 'package:spotify_app/common/widgets/custom_button.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/auth/cubit/auth_cubit.dart';
import 'package:spotify_app/presentation/auth/cubit/auth_states.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_auth_have_account.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_auth_title.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_text_field.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = context.read<AuthCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: SingleChildScrollView(
        child: BlocConsumer<AuthCubit, AuthStates>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              customReplacementNavigate(context, Constants.homeRoute);
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomAppBar(
                  isVisible: true,
                ),
                const SizedBox(
                  height: 80,
                ),
                const CustomAuthTitle(title: "Sign In"),
                const SizedBox(
                  height: 76,
                ),
                CustomTextField(
                  controller: cubit.email,
                  hintText: "Enter Username Or Email",
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  obscureText: true,
                    controller: cubit.password, hintText: "password"),
                const SizedBox(
                  height: 61,
                ),
                state is AuthLoading?const Center(child: CircularProgressIndicator(),) :
                CustomButton(
                  text: "Sign In",
                  onPressed: () {
                    cubit.login();
                  },
                ),
                const SizedBox(
                  height: 168,
                ),
                CustomAuthHaveAccount(
                  title1: "not a member ? ",
                  title2: 'register now',
                  onTap: () {
                    customNavigation(context, Constants.signupRoute);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
