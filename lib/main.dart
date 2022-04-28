import 'package:flutter/material.dart';
import 'views/tela_logincadastro.dart';
import 'views/tela_principal.dart';
import 'views/tela_lista.dart';
import 'views/tela_sobre.dart';
import 'views/tela_bancas.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FiscalNews',
      initialRoute: 'Login',

      routes: {
        'Login': (context) => const TelaLogin(),
        'Cadastro': (context) => const CadastroUsuario(),
        'Feed': (context) => const TelaPrincipal(),
        'Lista': (context) => const TelaLista(),
        'Bancas': (context) => const TelaBancas(),
        'Sobre': (context) => const TelaSobre(),
      },
    )
  );
}


