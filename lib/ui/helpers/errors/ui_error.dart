enum UIError {
  requiredField,
  invalidField,
  unexpected,
  invalidCredentials,
  cpfOrCnpjInUse,
  cpfOrCnpjNotFound,
  invalidToken,
  notFound,
  notConnected,
  emailInUse,
  phoneInUse,
  emailAndPhoneInUse,
  unprocessableEntity,
  canNotRegister,
  invalidData,
}

extension UIErrorExtension on UIError {
  String get description {
    switch (this) {
      case UIError.requiredField:
        return 'Campo obrigatório';
      case UIError.invalidField:
        return 'Campo inválido';
      case UIError.invalidCredentials:
        return 'Credenciais inválidas.';
      case UIError.cpfOrCnpjInUse:
        return 'Já existe uma conta com o dado informado.';
      case UIError.cpfOrCnpjNotFound:
        return 'Usuário não encontrado. Verifique a informação e tente novamente.';
      case UIError.emailAndPhoneInUse:
        return 'O e-mail e o celular informados já estão em uso. Gostaria de tentar outros?';
      case UIError.emailInUse:
        return 'O e-mail informado já está em uso. Gostaria de tentar outro?';
      case UIError.phoneInUse:
        return 'O celular informado já está em uso. Gostaria de tentar outro?';
      case UIError.notFound:
        return 'Recurso não encontrado. Verifique a informação e tente novamente';
      case UIError.notConnected:
        return 'Parece que você está sem internet. Verifique sua conexão e tente novamente!';
      case UIError.unprocessableEntity:
        return 'Não conseguimos processar a informação. Tente novamente.';
      case UIError.canNotRegister:
        return 'Para o seguro de vida, você não pode ser seu próprio beneficiário. Por favor, escolha outras pessoas.';
      case UIError.invalidData:
        return 'Os dados informados são inválidos/incorretos. Por favor, tente novamente!';
      default:
        return 'Algo errado aconteceu. Tente novamente em breve.';
    }
  }
}
