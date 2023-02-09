import 'package:medicine_app/main/factories/pages/signup/signup_validation_factory.dart';

import '../../../../exports.dart';

SignupPresenter makeGetxSigUpPresenter() =>
    GetxSignUpPresenter(validation: makeSignupValidation());
