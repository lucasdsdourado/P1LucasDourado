import 'package:flutter/material.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({ Key? key }) : super(key: key);

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
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
              child: const Text('Bancas', style: TextStyle(color: Colors.blue),),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, 'Sobre', arguments: usuario);
              },

              child: const Text('Sobre', style: TextStyle(
                color: Colors.white, 
                decoration: TextDecoration.underline,
                ),),
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


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: 
     Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
      height: 550,
      width: double.infinity,

      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade900,
          width: 8,
          ),
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
      ),

      child: Column(children: [
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade900,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(150),
            color: Colors.grey.shade300,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: Image.asset('lib/imagens/eu.png',scale: 2.5,),
          ),
        ),
        const SizedBox(height: 10),
        const Text('lucasdsdourado', style: TextStyle(fontSize: 20,),),
        const SizedBox(height: 30),
        
        const SizedBox(height: 15),
        Container(
          alignment: Alignment.center,
            width: double.infinity, 
            child: Column(
              children: const [
                Text(
                  'Tema: ', 
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                Text(
                  'Aplicativo de Not??cias Fiscais', 
                  style: TextStyle(fontSize: 20,),
                  textAlign: TextAlign.left,
                  ),
                SizedBox(height: 20),
                Text(
                  'Objetivo: ', 
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                Text(
                  'Fornecer um aplicativo que permita a leitura de not??cias de diversas fontes e de forma resumida.', 
                  style: TextStyle(fontSize: 20,),
                  textAlign: TextAlign.center,
                  ),
              ],
            ),
              
            
        ),
      ],
    )
    )
  )
  ),
  );
  }
}