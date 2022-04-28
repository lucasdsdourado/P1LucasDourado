import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/trataJson.dart';

class TelaBancas extends StatefulWidget {
  const TelaBancas({ Key? key }) : super(key: key);

  @override
  State<TelaBancas> createState() => _TelaBancasState();
}

class _TelaBancasState extends State<TelaBancas> {
    List<Noticias> lista = [];

  //
  // CARREGAR UM ARQUIVO JSON
  //
  carregarJson() async {
    final String arquivo = await rootBundle.loadString('lib/data/noticias.json');
    final dynamic data = await json.decode(arquivo);

    //percorrer o arquivo
    setState(() {
      data.forEach((item) {
        lista.add(Noticias.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await carregarJson();
    });
  }
  @override
  Widget build(BuildContext context) {
    String usuario = ModalRoute.of(context)!.settings.arguments == null ? "sem login":ModalRoute.of(context)!.settings.arguments as String;
    usuario = usuario.substring(0,1) == '@' ? usuario:'@'+usuario;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Image.asset('lib/imagens/logoapp_q.png',), 
        automaticallyImplyLeading: false,
        flexibleSpace: Container(),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[


            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Feed', arguments: usuario);
              },
              child: const Text('Feed', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Lista', arguments: usuario);
              },
              child: const Text('Lista', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Bancas', arguments: usuario);
              },
              child: const Text('Bancas', style: TextStyle(
                color: Colors.white, 
                decoration: TextDecoration.underline,
                ),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Sobre', arguments: usuario);
              },

              child: const Text('Sobre', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.blue)
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 229, 232, 235)),
              ),
              onPressed: (){}, 
              child: Text(usuario, style: const TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: 
        
        
        ListView.builder(

          itemCount: lista.length,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              child: Card(
                child: ListTile(
                  
                  leading: Image.asset(lista[index].imagem, height: 100, width: 100,),
                  trailing: const Icon(Icons.arrow_right),
                  title: Text(lista[index].banca,),
                  textColor: Colors.grey.shade700,
            
                  onTap: () {
                    Navigator.popAndPushNamed(
                      context,
                      'Feed',
                    );
                  },
                ),
              ),
              margin: const EdgeInsets.all(10),
            );
          },
        ),


      ),
    );  }
}