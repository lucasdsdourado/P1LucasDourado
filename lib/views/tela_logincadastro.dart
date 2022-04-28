// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
var logincadastrado = "n/a";
var senhacadastrada = "n/a";

class TelaLogin extends StatefulWidget {
  const TelaLogin({ Key? key }) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  //Declaração dos atributos que serão usados para
  //armazenar os dados informados pelo usuário
  var login = TextEditingController();
  var senha = TextEditingController();
  
  //Declaração de um atributo que identifica unicamente
  //o formulário
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Image.asset('lib/imagens/logoapp_q.png',), 
        title: const Text('FiscalNews'),
      ),

      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          //FORMULÁRIO PARA VALIDAÇÃO
          child: Container(
            margin: const EdgeInsets.fromLTRB(470, 10, 470, 0),
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            height: 550,

            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade700,
                width: 1,
                ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade200,
            ),

            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.people_alt,
                      color: Colors.black,
                      size: 100,
                    ),
                    const SizedBox(height: 30),
                    campoTexto('Login', login),
                    const SizedBox(height: 20),
                    campoTexto('Senha', senha),
                    const SizedBox(height: 40),
                    botao('Entrar'),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'Cadastro');
                      }, 
                      child: const Text('Cadastrar Usuário',style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        ),
                      ),
                      
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ), 
    );
  }
    //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    String hinttexto = "";
    
    if (rotulo=='Senha'){
      hinttexto = "Insira a senha";
    }
    else {
      hinttexto = "Insira o login";
    }
    return TextFormField(
      //variável associada
      controller: variavel,
      //maxLength: 15,
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade600,
      ),

      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade600,
        ),
        hintText: hinttexto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        
      ),

      //VALIDAÇÃO DOS DADOS
      validator: (value) {
        if ((value == ' ') || (value != logincadastrado || value != senhacadastrada)) {
          return 'Dados nao cadastrados';
        } else {
          return null;
        }
      },
    );
  }

  //
  // BOTÃO
  //
  botao(rotulo) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          //Validar o formulário
          if (formKey.currentState!.validate()) {

            //O método setState é usado para acessar
            //os dados fornecidos pelo usuário
            setState(() {
              Navigator.popAndPushNamed(context, 'Feed', arguments: logincadastrado);
            });
          }
        }, 
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }

}

class CadastroUsuario extends StatefulWidget {
  const CadastroUsuario({ Key? key }) : super(key: key);

  @override
  State<CadastroUsuario> createState() => _CadastroUsuarioState();
}

class _CadastroUsuarioState extends State<CadastroUsuario> {
  //Declaração dos atributos que serão usados para
  //armazenar os dados informados pelo usuário
  var login = TextEditingController();
  var senha = TextEditingController();
  var nome = TextEditingController();
  var email = TextEditingController();

  //Declaração de um atributo que identifica unicamente
  //o formulário
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Image.asset('lib/imagens/logoapp_q.png',), 
        title: const Text('FiscalNews'),
      ),

      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          //FORMULÁRIO PARA VALIDAÇÃO
          child: Container(
            margin: const EdgeInsets.fromLTRB(470, 10, 470, 0),
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            height: 680,

            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade700,
                width: 1,
                ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade200,
            ),

            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.lock_open,
                      color: Colors.black,
                      size: 100,
                    ),
                    const SizedBox(height: 30),
                    campoTexto('Nome', nome),
                    const SizedBox(height: 20),
                    campoTexto('E-mail', email),
                    const SizedBox(height: 20),
                    campoTexto('Login', login),
                    const SizedBox(height: 20),
                    campoTexto('Senha', senha),
                    const SizedBox(height: 40),
                    botao('Cadastrar'),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, 
                      child: const Text('Cancelar',style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        ),
                      ),
                      
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ), 
    );
  }
    //
  // CAMPO DE TEXTO
  //
  campoTexto(rotulo, variavel) {
    return TextFormField(
      //variável associada
      controller: variavel,
      //maxLength: 15,
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade900,
      ),

      decoration: InputDecoration(
        labelText: rotulo,
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade600,
        ),
        hintText: "Inserir " + rotulo,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        
      ),

      //VALIDAÇÃO DOS DADOS
      validator: (value) {
        if (value == '') {
          return 'Insira um dado';
        } else {
          return null;
        }
      },
    );
  }

  //
  // BOTÃO
  //
  botao(rotulo) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          //Validar o formulário
          if (formKey.currentState!.validate()) {

            //O método setState é usado para acessar
            //os dados fornecidos pelo usuário
            setState(() {
              caixaDialogo(
                'Usuário cadastro com sucesso!\n\nEfetue o Login.'
              );
              
            });
          }
        }, 
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 24),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Cadastro'),
            content: Text(msg + '\n\nLogin: ' + login.text),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();

                    setState(() {
                      logincadastrado = login.text;
                      senhacadastrada = senha.text;
                      
                      login.clear();
                      senha.clear();
                      nome.clear();
                      email.clear();

                      Navigator.of(context).pop();
                    });
                  },
                  child: const Text('fechar')),
            ],
          );
        });
  }
}