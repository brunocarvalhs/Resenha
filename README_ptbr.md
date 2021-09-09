<p align="center"><a href="https://github.com/brunocarvalhs/Resenha" target="_blank"><img src="https://github.com/brunocarvalhs/Resenha/blob/master/assets/images/logo.png" width="250"></a></p>

<p align="center">
<a href="https://github.com/brunocarvalhs/Resenha/actions/workflows/android-dev-release.yml"><img src="https://github.com/brunocarvalhs/Resenha/actions/workflows/android-dev-release.yml/badge.svg" alt="Demo App PlayStore Release"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

[Inglês](/README.md) | Português

> A partir de agora, este projeto é projetado para produzir apenas compilações para Android e iOS. Mesmo assim, dado o atual
> *estabilidade* do Flutter SDK para desktop (Windows, Linux e macOS) e web, há uma grande probabilidade de que isso
> o projeto eventualmente suportará compilações para todas as plataformas.

Este README tem como objetivo orientar como este projeto está estruturado e deve servir como um guia para ajudar a dimensionar o projeto com
requisitos atuais e futuros. Pense nisso como um mapa e regras flexíveis que orientam as decisões de design. Enquanto
eles podem (e provavelmente irão) mudar ao longo do tempo, as discussões devem ser levantadas para desencadear tais mudanças: isso significa que
vamos pensar / nos questionar antes de tomar uma ação que quebra qualquer decisão racional feita aqui.

## Sobre
A demanda da Resenha é por grupos de pessoas que precisam de uma ferramenta para organização de eventos em grupos privados, com a maior facilidade e patricidade, a partir da frase: “Se fosse combinado não aconteceria”, com a Resenha aconteceria.

## Configurar
Se você não tem ideia de como instalar o Flutter e executá-lo localmente, marque este
[_Iniciar_](https://flutter.dev/docs/get-started/install).

Se você tiver o Flutter configurado localmente, na pasta raiz do projeto, instale as dependências do pubspec executando
`flutter pub get`.

## Arquitetura
Como este aplicativo funciona de dentro e como ele interage com dependências externas - escrito em detalhes em
[ARCHITECTURE.md](ARCHITECTURE.md).

## Contribuindo
Veja [CONTRIBUTING](CONTRIBUTING.md) para detalhes sobre como contribuir para o projeto.

## Dependências
O design tem dependências específicas, onde a inclusão ou mudança deve ser discutida antes do desenvolvimento para evitar problemas de recursos futuros.

- firebase_auth: ^3.1.0
- google_sign_in: ^5.0.4
- google_fonts: ^2.1.0
- local_auth: ^1.1.6
- flutter_modular: ^3.4.1+1
- flutter_triple: ^1.2.4+3
- mobx_triple: ^1.1.2+1
- dartz: ^0.10.0
- dio: ^4.0.0
- equatable: ^2.0.3

### dependências de desenvolvedores
- build_runner: ^2.1.1
- faker: ^2.0.0
- flutter_modular_test: ^1.0.3
- mockito: ^5.0.15
- triple_test: ^0.0.8

## Licença
Resenha is published under [BSD 3-Clause](LICENSE).
