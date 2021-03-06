import '../widgets/noticias.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  get child => null;

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
              child: const Text('Feed', style: TextStyle(
                color: Colors.white, 
                decoration: TextDecoration.underline,
                ),),
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
     

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              WidgetNoticias(
                "lib/imagens/logo_legisweb.png",
                "@legisweb",
                "05/04/2022",
                "Receita Federal prorroga o prazo da declara????o do imposto de renda",
                "A Receita Federal publicou no Di??rio Oficial da Uni??o desta ter??a-feira, 5 de abril, a Instru????o Normativa n?? 2.077, que prorroga para 31 de maio de 2022 o prazo de entrega da Declara????o de IRPF.\n\nO imposto a pagar apurado tamb??m teve seu vencimento adiado para o final do m??s de maio, mas as restitui????es seguir??o o cronograma anterior, sem altera????o",
              ),
              WidgetNoticias(
                "lib/imagens/logo_sigaofisco.png",
                "@sigafisco",
                "25/04/2022",
                "Resolu????o prorroga para 31 de maio ades??o ao Relp",
                "Resolu????o CGSN 168/2022 prorroga para 31 de maio de 2022 o prazo de ades??o ao Relp. A medida j?? tinha sido anunciada dia 20 de abril pelo Comit?? Gestor do Simples Nacional.\n\nO Relp permite o parcelamento com redu????es nos valores de juros e multas para os d??bitos apurados no Simples Nacional ou no Simei de per??odos de apura????o (PA) at?? 02/2022.",              
              ),
              WidgetNoticias(
                "lib/imagens/logo_diaadia.png",
                "@diaadiatributario",
                "11/04/2022",
                "Ju??za permite que empresa retire ISS, PIS e Cofins da base de c??lculo de ISS",
                "Com base na decis??o do Supremo Tribunal Federal que estabeleceu que o ICMS deve ser exclu??do da base de c??lculo do PIS/Cofins, a 12?? Vara de Fazenda P??blica do Rio de Janeiro concedeu liminar para autorizar a American Bureau of Shipping a retirar os valores de ISS, PIS e Cofins da base de c??lculo do seu ISS.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_guiatributario.png",
                "@guiatributario",
                "18/04/2022",
                "TIPI/2022 ??? Decreto Consolida Tabela com Redu????es de Al??quotas",
                "Por meio do Decreto 11.047/2022 foi alterada a Tabela do IPI, com vig??ncia a partir de 01.05.2022.\n\nA nova tabela j?? contempla as redu????es das al??quotas do IPI, previstas no Decreto 10.979/2022.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_contadorescnt.png",
                "@legisweb",
                "05/04/2022",
                "Receita Federal prorroga o prazo da declara????o do imposto de renda",
                "A Receita Federal publicou no Di??rio Oficial da Uni??o desta ter??a-feira, 5 de abril, a Instru????o Normativa n?? 2.077, que prorroga para 31 de maio de 2022 o prazo de entrega da Declara????o de IRPF.\n\nO imposto a pagar apurado tamb??m teve seu vencimento adiado para o final do m??s de maio, mas as restitui????es seguir??o o cronograma anterior, sem altera????o",              
              ),
              WidgetNoticias(
                "lib/imagens/logo_jota.png",
                "@jota",
                "26/04/2022",
                "Decis??o no STF gera corrida por exclus??o da Selic do PIS/Cofins",
                "A decis??o do Supremo Tribunal Federal (STF) que afastou a cobran??a do IRPJ e da CSLL sobre valores referentes ?? taxa Selic em raz??o de repeti????o de ind??bito tribut??rio, isto ??, da devolu????o de um valor pago indevidamente pelo contribuinte, levou a uma corrida de contribuintes ao Judici??rio para defender a n??o incid??ncia do PIS e da Cofins sobre essas verbas.\n\nO principal argumento dos advogados ?? que os valores recebidos a t??tulo de Selic n??o representam receita nova para as empresas e, portanto, n??o podem compor a base de c??lculo do PIS e da Cofins.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_easyway.png",
                "@ewb",
                "26/04/2022",
                "Transmiss??o da ecd 2022 poder?? gerar alerta",
                "A maior novidade para essa entrega est?? na publica????o da Nota T??cnica ECD n?? 001, que disp??e sobre nova regra de transmiss??o da obrigatoriedade relativa ?? aptid??o do profissional cont??bil conforme registros do Conselho Federal de Contabilidade ??? CFC.\n\nA NT ECD n?? 001 enfatiza que, de acordo com a legisla????o em vigor, somente contadores e t??cnicos em contabilidade com registro em um Conselho Regional de Contabilidade ??? CRC podem exercer a profiss??o cont??bil e a partir disso, faz um alerta: ???ECD transmitidas a partir de 2022 poder??o receber um aviso na transmiss??o identificando profissionais cont??beis assinantes da escritura????o que constam como ???inaptos??? segundo os registros do CFC???.",
              ),
              WidgetNoticias(
                "lib/imagens/logo_contadorescnt.png",
                "@contadorescnt",
                "26/04/2022",
                "Governo adia envio dos dados de ??rg??os p??blicos para o eSocial",
                "O governo federal adiou as datas de envio de informa????es de ??rg??os p??blicos, bem como das organiza????es internacionais, para o eSocial.\n\nO grupo gestor do eSocial atendeu pedido de representantes de estados e munic??pios que ainda n??o est??o preparados para os compromissos do sistema de escritura????o digital",
              ),
              WidgetNoticias(
                "lib/imagens/logo_fazendasp.png",
                "@fazendasp",
                "26/04/2022",
                "Em terceiro repasse de ICMS de abril, Sefaz-SP transfere R\$ 1,5 bilh??o aos munic??pios",
                "A Secretaria da Fazenda e Planejamento do Estado de S??o Paulo (Sefaz-SP) transfere, nesta ter??a-feira (26), R\$ 1,53 bilh??o aos caixas dos 645 munic??pios paulistas. O dep??sito ?? referente ao montante de ICMS arrecadado de 18 a 22 de abril. \n\nOs valores correspondem a 25% da arrecada????o do imposto, que s??o distribu??dos ??s administra????es municipais com base na aplica????o do ??ndice de Participa????o dos Munic??pios (IPM) definido para cada cidade.",
              ),
              WidgetNoticias(
                "lib/imagens/contabeis.png",
                "@contabeis",
                "20/04/2022",
                "Banco Central: servidores suspendem greve at?? in??cio de maio e aguardam proposta do governo",
                "A greve dos servidores do Banco Central (BC) foi suspensa at?? o in??cio de maio. A decis??o da categoria foi anunciada em assembleia realizada nesta ter??a-feira (19). Apesar da pausa, os funcion??rios do BC dizem que dar??o continuidade a paralisa????es parciais di??rias e ?? opera????o-padr??o iniciada em 17 de mar??o.\n\nOs servidores do BC deram como prazo at?? 2 de maio para que o governo apresente uma proposta de aumento salarial melhor do que os 5% oferecidos para todos os servidores federais. ",
              ),
            ],

            ),
          ),

      ),


    );
  }
}