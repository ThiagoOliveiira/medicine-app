import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicine_app/exports.dart';

class SignupPage extends StatelessWidget {
  final SignupPresenter presenter;
  const SignupPage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Crie sua conta',
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Login',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: kBottomNavigationBarHeight),
                Obx(
                  () => TextFormFieldComponent(
                    hintText: 'Nome',
                    prefixIcon: const Icon(Icons.person_2_rounded),
                    onChange: presenter.validateName,
                    errorLabel:
                        presenter.nameError.value?.description.isEmpty ==
                                    true ||
                                presenter.nameError.value == null
                            ? null
                            : presenter.nameError.value?.description,
                  ),
                ),
                const SizedBox(height: 10),
                Obx(
                  () => TextFormFieldComponent(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email_rounded),
                    onChange: presenter.validateEmail,
                    errorLabel:
                        presenter.emailError.value?.description.isEmpty ==
                                    true ||
                                presenter.emailError.value == null
                            ? null
                            : presenter.emailError.value?.description,
                  ),
                ),
                const SizedBox(height: 10),
                Obx(
                  () => TextFormFieldComponent(
                    hintText: 'Senha',
                    prefixIcon: const Icon(Icons.lock),
                    onChange: presenter.validatePassword,
                    errorLabel:
                        presenter.passwordError.value?.description.isEmpty ==
                                    true ||
                                presenter.passwordError.value == null
                            ? null
                            : presenter.passwordError.value?.description,
                    obscureText: true,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Theme.of(context).primaryColor),
                            padding: const MaterialStatePropertyAll(
                                EdgeInsets.symmetric(vertical: 14))),
                        child: Text('Criar conta',
                            style: Theme.of(context).textTheme.labelLarge),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                InkWell(
                    onTap: () {},
                    child: Text('Esqueceu sua senha?',
                        style: Theme.of(context).textTheme.labelMedium))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
