import '../../../../exports.dart';
import '../../../builders/builders.dart';
import '../../../composites/composites.dart';

Validation makeSignupValidation() =>
    ValidationComposite(makeSignupValidations());

List<FieldValidation> makeSignupValidations() => [
      ...ValidationBuilder.field('name').required().min(3).build(),
      ...ValidationBuilder.field('email').required().email().build(),
      ...ValidationBuilder.field('password').required().min(8).max(16).build(),
    ];
